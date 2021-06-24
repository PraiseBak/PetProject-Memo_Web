import sys
import os
sys.path.append(".")
from app.main.utils import get_covered_ip


import pymysql
class Database():

   def __init__(self):
      self.db= pymysql.connect(host='localhost',
                                    port=3306,
                                    user='root',
                                    passwd='3062',
                                    db='mem_web',
                                    charset='utf8')

      self.cursor= self.db.cursor(pymysql.cursors.DictCursor)


   def execute(self, query,args={}):
      return self.cursor.execute(query, args)

   def executeOne(self, query, args={}):
      self.cursor.execute(query,args)
      row = self.cursor.fetchone()
      return row

   def executeAll(self, query, args={}):
      self.cursor.execute(query,args)
      row=self.cursor.fetchall()
      return row

   def commit(self):
      self.db.commit()


if __name__ == "__main__":
    

   password_column_add_sql = """ALTER TABLE board_content_table add content_password varchar(256) NOT NULL""";
   content_comment_add_sql = """ALTER TABLE board_content_table drop column content_comment""";
   content_name_change_sql = """ALTER TABLE comment_table change user_name username varchar(256) NOT NULL"""
   column_add_sql = """ALTER TABLE comment_table change login_user tinyint(1)""";
   


   comment_table_add_sql = """ CREATE TABLE comment_table(
                     username VARCHAR(256) NOT NULL,
                     password VARCHAR(256) NOT NULL,
                     comment VARCHAR(256) NOT NULL,
                     board_idx INT UNSIGNED NOT NULL
                     );"""
   
   create_check_list_table = """CREATE TABLE check_list(
                  user_idx INT UNSIGNED NOT NULL,
                  content_idx INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                  content VARCHAR(256) NOT NULL
                  );"""

   create_user_table = """CREATE TABLE user(
               id VARCHAR(256) NOT NULL,
               password VARCHAR(256) NOT NULL,
               idx INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
               );"""

   create_board_manage_table = """CREATE TABLE board_manage(
      board_name VARCHAR(256) NOT NULL,
      board_idx INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
   );"""

   create_board_content_table = """CREATE TABLE board_content_table(
      board_content VARCHAR(256) NOT NULL,
      board_content_idx int UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
   );"""

   db = Database()
   db.executeAll(column_add_sql)
   db.commit()
   
   


