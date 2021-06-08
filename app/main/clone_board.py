from threading import main_thread
from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from app.module.dbModule import Database
from app.forms.forms import ContentAddForm, UserAddCheck
from datetime import datetime

clone_board_bp = Blueprint('clone_board',__name__,url_prefix='/clone_board')

@clone_board_bp.route('/list',methods=['POST','GET'])
def list():
    db = Database()
    content_list = db.executeAll("SELECT * FROM board_content_table")
    print(content_list)
    return render_template('/main/board.html',content_list=content_list)



@clone_board_bp.route('/add',methods=['POST','GET'])
def add():
    form = ContentAddForm()
    title = form.content_title.data
    text = form.content_text.data
    if request.method == 'POST' and not form.validate_on_submit() and ((title == "") or (text == "")):
        error = "데이터 양식이 맞지 않습니다"
        flash(error)
    elif request.method == 'POST' and not((title == "") or (text == "")):
        db = Database()
        db.execute("""INSERT INTO board_content_table (board_content,board_content_title,write_time) VALUES ('%s','%s','%s')""" % (text, title,datetime.now())) 
        db.commit()
        return redirect(url_for("clone_board.list"))
        
    return render_template('/main/board_add.html',form=form)
