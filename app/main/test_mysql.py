import pymysql

db= pymysql.connect(host='localhost',
			                     port=3306,
			                     user='root',
			                     passwd='qkrcksdid1@',
			                     db='test',
			                     charset='utf8')
cursor= db.cursor()


class sql_instance():
	def create_table(self,test=False):
		if test:
			print("엄")
		else:
		
			 
			 
			# SQL query 작성
			sql= """CREATE TABLE user(
			         idx  INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
			         name VARCHAR(256) NOT NULL,
			         nick VARCHAR(256) NOT NULL
			         );"""
			 
			# SQL query 실행
			cursor.execute(sql)
			 
			# SQL query가 잘 실행됐는지 table을 살펴보도록 합니다.
			# 이미 4번 라인에서 use database를 수행한 것과 다름 없으니 show tables라는 명령을 수행해도 문제가 없습니다.
			cursor.execute("show tables")
			 
			# 데이터 변화 적용
			# CREATE 혹은 DROP, DELETE, UPDATE, INSERT와 같이 Database 내부의 데이터에 영향을 주는 함수의 경우 commit()을 해주어야 합니다.
			db.commit()
			 
			# Database 닫기
			db.close()

	def insert(self,name,nick):
		db= pymysql.connect(host='localhost',
			                     port=3306,
			                     user='root',
			                     passwd='qkrcksdid1@',
			                     db='test',
			                     charset='utf8')
			 
		cursor= db.cursor()

		sql = """
			INSERT INTO test_table(name,nick)
			VALUES('%s','%s')"""  %(name,nick)
		cursor.execute(sql)
		db.commit()
			 
	def select(self,table):
		sql = """SELECT * FROM test_table"""
		cursor.execute(sql)
		result = cursor.fetchall()
		return result

	def update(self,nick,name,obj_name):
		sql = """UPDATE test_table SET name='%s', nick='%s'
			  WHERE name='%s' """ % (nick,name,obj_name)

		cursor.execute(sql)
		db.commit()

if __name__ == '__main__':
	sql = sql_instance()
	sql.create_table()
	#sql.insert("chanyang","PraiseBak")
	
	#sql.update("Chanyang","Praisebak","chanyang")
	#print(sql.select("test_table"))
