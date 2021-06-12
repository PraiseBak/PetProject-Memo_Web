from threading import main_thread
from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from pymysql import NULL
from app.module.dbModule import Database
from app.forms.forms import ContentAddForm, UserAddCheck
from datetime import datetime

clone_board_bp = Blueprint('clone_board',__name__,url_prefix='/clone_board')

@clone_board_bp.route('/list')
def list():
    db = Database()
    content_list = db.executeAll("SELECT * FROM board_content_table")
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
        db.execute("""INSERT INTO board_content_table (board_content,board_content_title,write_time,write_user_name,content_password) VALUES ('%s','%s','%s','%s','%s')""" % (text, title,datetime.now(),"test","test")) 
        db.commit()
        return redirect(url_for("clone_board.list"))
        

    return render_template('/main/board_add.html',form=form)

@clone_board_bp.route('/list/<int:board_content_idx>/')
def content(board_content_idx):
    db = Database()
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    return render_template('/main/board_content.html',content=data)

@clone_board_bp.route('/del/<int:board_content_idx>/')
def delContent(board_content_idx):
    db = Database()
    db.execute("""DELETE FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    db.execute("""SET @CNT = 0;""")
    db.execute("""UPDATE board_content_table SET board_content_table.board_content_idx = @CNT:=@CNT+1;""")
    db.execute("""ALTER TABLE board_content_table AUTO_INCREMENT=1;""")
    db.commit()
    return redirect(url_for("clone_board.list"))

    
@clone_board_bp.route('/modify/<int:board_content_idx>/',methods=['POST','GET'])
def modify(board_content_idx):
    db = Database()
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))

    if request.method == 'POST':
        form = ContentAddForm()
        if form.validate_on_submit():
            db.execute("""UPDATE board_content_table SET write_time='%s',board_content_title='%s',board_content='%s' WHERE board_content_idx = '%s'""" % (datetime.now(),form.content_title.data,form.content_text.data,str(data[0]['board_content_idx']) ))
            db.commit() 
            return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
    else:
        form = ContentAddForm(content_title=data[0]['board_content_title'],content_text=data[0]['board_content'])
    return render_template('/main/board_add.html',form=form,board_content_idx=board_content_idx)