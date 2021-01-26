import pymysql

class Database():

	def __init__(self):
		db= pymysql.connect(host='localhost',
					                     port=3306,
					                     user='root',
					                     passwd='qkrcksdid1@',
					                     db='test',
					                     charset='utf8')

		self.cursor = self.db.cursor(pymysql.cursor.DictCursor)

		def execute(self, query,args={}):
			self.cursor.execute(query, args)

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

			