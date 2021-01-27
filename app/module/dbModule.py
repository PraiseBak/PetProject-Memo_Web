import pymysql

class Database():

	def __init__(self):
		self.db= pymysql.connect(host='localhost',
					                     port=3306,
					                     user='root',
					                     passwd='qkrcksdid1@',
					                     db='test',
					                     charset='utf8')

		self.cursor= self.db.cursor(pymysql.cursors.DictCursor)


	def execute(self, query,args={}):
		return self.cursor.execute(query, args)

	def executeOne(self, query, args={}):
		self.cursor.execute(query,args)
		row = self.cursop.fetchone()
		return row

	def executeAll(self, query, args={}):
		self.cursor.execute(query,args)
		row=self.cursor.fetchall()
		return row

	def commit(self):
		self.db.commit()


if __name__ == "__main__":
	create_table = """CREATE TABLE user(
	               idx INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	               id VARCHAR(256) NOT NULL UNIQUE KEY,
	               password VARCHAR(256) NOT NULL
	               );"""

	db = Database()
	print(db.execute(create_table))
	db.commit()
