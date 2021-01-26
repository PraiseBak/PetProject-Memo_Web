from flask import Blueprint, request, render_template, flash, redirect, url_for
from flask import current_app as current_app
import os
import app.test.dbModule as dbModule
    

test= Blueprint('test', __name__, url_prefix='/test')
 
@test.route('/', methods=['GET'])
def index():
    return render_template('/test/test.html',
                            result=None,
                            resultData=None,
                            resultUPDATE=None)
 
 
 
# INSERT 함수 예제
@test.route('/insert', methods=['GET'])
def insert():
    db_class= dbModule.Database()

    sql     = "INSERT INTO test.user(name,nick) \
                VALUES('%s','%s')" %('testData','testname')
    db_class.execute(sql)
    db_class.commit()
 
    return render_template('/test/test.html',
                           result='insert is done!',
                           resultData=None,
                           resultUPDATE=None)
 
 
 
# SELECT 함수 예제
@test.route('/select', methods=['GET'])
def select():
    db_class= dbModule.Database()
 
    sql     = "SELECT idx, name \
                FROM test.user"
    row     = db_class.executeAll(sql)
 
    print(row)
 
    return render_template('/test/test.html',
                            result=None,
                            resultData=row[0],
                            resultUPDATE=None)
 
 
 
# UPDATE 함수 예제
@test.route('/update', methods=['GET'])
def update():
    db_class= dbModule.Database()
 
    sql     = "UPDATE test.user \
                SET name='%s' \
                WHERE name='PraiseBak'"% ('praiseUpdate')
    db_class.execute(sql)   
    db_class.commit()
 
    sql     = "SELECT idx, name \
                FROM test.user"
    row     = db_class.executeAll(sql)
 
    return render_template('/test/test.html',
                            result=None,
                            resultData=None,
                            resultUPDATE=row[0])


