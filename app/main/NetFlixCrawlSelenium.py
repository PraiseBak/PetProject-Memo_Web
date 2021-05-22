from selenium import webdriver
import os

class NetflixCrawl():

	id = ""
	password = ""
	driverPath = ""
	driver = None

	def __init__(self):
		self.setLoginInfo()
		self.setDriver()

	def setLoginInfo(self):
		self.id = "leehj908@naver.com"
		self.password = "89088leeppuya"

	def setDriver(self):
		options = webdriver.ChromeOptions()
		#options.add_argument('headless')
		#options.add_argument('window-size=1920x1080')
		#options.add_argument("disable-gpu")
		self.driver = webdriver.Chrome('chromedriver', chrome_options=options)

	#로그인
	def netflixLogin(self):
		self.driver.get('https://www.netflix.com/kr/login')
		self.driver.find_element_by_name("userLoginId").send_keys(self.id)
		self.driver.find_element_by_name("password").send_keys(self.password)
		self.driver.find_element_by_xpath('//*[@id="appMountPoint"]/div/div[3]/div/div/div[1]/form/button').click()
		self.driver.implicitly_wait(3)
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
		print("엄춘식")
		return self.getImgUrlList(images)


	def testNetflixCrawl(self):
		self.netflixLogin()
		imgs = self.netflixSearch("브레이킹 배드")
		for img in imgs:
			print(img)
		self.driver.close()

