import multiprocessing
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import os
import json
import requests
import pandas as pd
import numpy as np
from tqdm import tqdm
from io import BytesIO
from multiprocessing import Process, Queue
import time

class NetflixCrawl():

	id = ""
	password = ""
	driverPath = ""
	driver = None
	hasLogin = False

	def init(self):
		self.setLoginInfo()
		self.setDriver()
		self.driver.implicitly_wait(1)
		self.netflixLogin()


	def __init__(self):
		pass

	def setLoginInfo(self):
		self.id = "leehj908@naver.com"
		self.password = "89088leeppuya"

	def setDriver(self):
		self.driver = webdriver.Chrome('./chromedriver.exe')

	#로그인
	def netflixLogin(self):
		self.driver.get('https://www.netflix.com/kr/login')
		self.driver.find_element_by_name("userLoginId").send_keys(self.id)
		self.driver.find_element_by_name("password").send_keys(self.password)
		self.driver.find_element_by_xpath('//*[@id="appMountPoint"]/div/div[3]/div/div/div[1]/form/button').click()
		self.driver.implicitly_wait(1)
		#넷플릭스 프로필 선택
		profiles = self.driver.find_elements_by_class_name("profile")
		a_tag = profiles[1].find_element_by_tag_name("a")
		href = a_tag.get_attribute("href")
		self.driver.get(href)

	def getImgUrlList(self,images = None):
		limit = 30
		if images == None:
			return

		urlList = []
		count = 0
		for image in images:
			if count > limit:
				break	
			url = image.get_attribute('src')
			urlList.append(url)
			count += 1
		return urlList

	def netflixSearch(self,searchText = ""):
		self.driver.get("https://www.netflix.com/search?q=%s" %searchText)
		images = self.driver.find_elements_by_class_name("boxart-image")
		return self.getImgUrlList(images)

	def testNetflixCrawl(self):
		self.netflixLogin()
		um = self.netflixSearch("브레이킹 배드")
		self.driver.close()
		return um




	

def stock_master_kospi():
    url = 'https://kind.krx.co.kr/corpgeneral/corpList.do'  # http://kind.krx.co.kr 사이트 네트워크 응답주소
    data = {
        'method': 'download',
        'marketType':'stockMkt', # 시장구분
        'orderMode': '1',  # 정렬컬럼
        'orderStat': 'D',  # 정렬 내림차순
        'searchType': '13',  # 검색유형: 상장법인
        'fiscalYearEnd': 'all',  # 결산월: 전체
        'location': 'all',  # 지역: 전체
    }
    r = requests.post(url, data=data)
    f = BytesIO(r.content)
    dfs = pd.read_html(f, header=0, parse_dates=['상장일'])
    df = dfs[0].copy()
    # 숫자를 앞자리가 0인 6자리 문자열로 변환
    
    df['종목코드'] = df['종목코드'].astype(np.str_)
    df['종목코드'] = df['종목코드'].str.zfill(6)
    return df


kospi_sm = stock_master_kospi()
kospi_sm = kospi_sm["종목코드"]


def kospi_process(process_num,start_index,end_index):
    for i in range(start_index,end_index-1):
        x = kospi_sm[i]
        headers = {
            'Accept': 'application/json, text/plain, */*',
            'Accept-Encoding': 'gzip, deflate',
            'Accept-Language': 'ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7',
            'Connection': 'keep-alive',
            'Cookie': 'GS_font_Name_no=0; GS_font_size=16; _ga=GA1.3.937989519.1493034297; webid=bb619e03ecbf4672b8d38a3fcedc3f8c; _ga=GA1.2.937989519.1493034297; _gid=GA1.2.215330840.1541556419; KAKAO_STOCK_RECENT=[%22A069500%22]; recentMenus=[{%22destination%22:%22chart%22%2C%22title%22:%22%EC%B0%A8%ED%8A%B8%22}%2C{%22destination%22:%22current%22%2C%22title%22:%22%ED%98%84%EC%9E%AC%EA%B0%80%22}]; TIARA=C-Tax5zAJ3L1CwQFDxYNxe-9yt4xuvAcw3IjfDg6hlCbJ_KXLZZhwEPhrMuSc5Rv1oty5obaYZzBQS5Du9ne5x7XZds-vHVF; webid_sync=1541565778037; _gat_gtag_UA_128578811_1=1; _dfs=VFlXMkVwUGJENlVvc1B3V2NaV1pFdHhpNTVZdnRZTWFZQWZwTzBPYWRxMFNVL3VrODRLY1VlbXI0dHhBZlJzcE03SS9Vblh0U2p2L2V2b3hQbU5mNlE9PS0tcGI2aXQrZ21qY0hFbzJ0S1hkaEhrZz09--6eba3111e6ac36d893bbc58439d2a3e0304c7cf3',
            'Host': 'finance.daum.net',
            'If-None-Match': 'W/"23501689faaaf24452ece4a039a904fd"',
            'Referer': 'http://finance.daum.net/quotes/A' + x,
            'User-Agent': 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36'
        }
        url_stock_months = ('http://finance.daum.net/api/charts/A'+x+'/months?limit=1&adjusted=true')
        res_months = requests.get(url_stock_months, headers=headers)
        data_months = json.loads(res_months.text)
        # 데이터를 데이터프레임화 한다.
        df_months = pd.DataFrame(data_months['data'])
        print(process_num,"번째 프로세스",df_months)
        print("\n\n\n************************************\n\n\n")

if __name__=='__main__':
    # result_list = Queue()
    process1 = Process(target = kospi_process, args = (0,0, 400),daemon=True)
    process2 = Process(target= kospi_process, args = (1,400, 800),daemon=True)
    start_time = time.perf_counter()
    start_time5 = time.process_time()

    process1.start()
    process2.start()
    process1.join()
    process2.join()
