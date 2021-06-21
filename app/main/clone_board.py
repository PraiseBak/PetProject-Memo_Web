from threading import main_thread
from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from pymysql import NULL
from app.module.dbModule import Database
from app.forms.forms import CommentAddForm, ContentAddForm, UserAddCheck
from datetime import datetime
from app.main.utils import *
clone_board_bp = Blueprint('clone_board',__name__,url_prefix='/clone_board')



@clone_board_bp.route('/')
@clone_board_bp.route('/list')
def list():
    db = Database() 
    contentCount= db.executeAll(getAutoIncrementQuery())[0]['AUTO_INCREMENT'] -1
    page_unit = 30
    maxPage = int(contentCount / page_unit) + 1
    page = request.args.get('page', type=int, default=1)
    if page > maxPage:
        page = maxPage
        flash("최대 페이지 입니다")
        return redirect(url_for("clone_board.list",page=maxPage))
    
    pageSQL = getPageQuery(page,page_unit)
    #auto increment value = cur content count
    content_list = db.executeAll(pageSQL)
    if page + 9 < maxPage:
        maxPage = page + 9

    page_btn_list = []
    page_btn_list.append(page)
    leftLook = True
    tmpPage = 0
    i = 1
    count = 1
    #왼쪽한번 오른쪽한번 다시 왼쪽 ㄱ
    while count != 10:
        if leftLook:
            tmpPage = page-i
            if tmpPage > 0:
                page_btn_list.append(tmpPage)
                count += 1
            else:
                saveLeftIndex = -1
                leftLook=False
                i=0
            if count == 5:
                saveLeftIndex = i+1
                leftLook=False
                i=0
        else:
            tmpPage = page + i
            if tmpPage <= maxPage:
                page_btn_list.append(tmpPage)
                count += 1
            else:
                break
        i+=1
    while count != 10 and saveLeftIndex != -1:
        tmpPage = page-saveLeftIndex
        if tmpPage > 0:
            page_btn_list.append(tmpPage)
            count += 1
        else:
            break
        saveLeftIndex+=1
    page_btn_list.sort()

    return render_template('/main/board.html',content_list=content_list,cur_page=page,page_btn_list=page_btn_list)


@clone_board_bp.route('/content/<int:board_content_idx>/',methods=['POST','GET'])
def content(board_content_idx):
    data = None
    comment = None
    db = Database() 
    form = CommentAddForm()
    if request.method == 'POST' and form.validate_on_submit():
        username = form.username.data
        password = form.password.data
        comment = form.content_text.data
        comment_idx = db.executeAll("""SELECT COUNT(*) FROM comment_table WHERE board_idx='%s'""" %(board_content_idx))
        ip = get_covered_ip()
        db.executeAll("""INSERT INTO comment_table (comment,username,password,write_time,board_idx,comment_idx,write_ip) VALUES ('%s','%s','%s','%s','%s','%s','%s')""" % (comment, username,password,datetime.now(),board_content_idx,comment_idx[0]['COUNT(*)']+1,ip)) 
        db.commit()
        return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    comment = db.executeAll("""SELECT * FROM comment_table WHERE board_idx = %s""" %str(board_content_idx))
    return render_template('/main/board_content.html',content=data,form=form,board_content_idx=board_content_idx,comment_data=comment)


    
@clone_board_bp.route('/modify/<int:board_content_idx>/<int:password>',methods=['POST','GET'])
def modify(board_content_idx,password):
    db = Database() 
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    error = None
    if request.method == 'POST':
        form = ContentAddForm()
        if form.validate_on_submit():
            db.execute("""UPDATE board_content_table SET write_time='%s',board_content_title='%s',board_content='%s' WHERE board_content_idx = '%s'""" 
            % (datetime.now(),form.content_title.data,form.content_text.data,str(data[0]['board_content_idx']) ))
            db.commit() 
            return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
        else:
            error = "수정 데이터 양식이 맞지 않습니다"
            flash(error)
            return render_template('/main/board_add.html',form=form,board_content_idx=board_content_idx,error=error)
              
    elif data[0]['content_password'] == str(password):
        content_title = data[0]['board_content_title']
        content_text = data[0]['board_content']
        username = data[0]['write_user_name']
        password = data[0]['content_password']
        form = ContentAddForm(content_title=content_title,content_text=content_text,username=username,password=password,modify=True)
    else:
        flash("wrong password")
        return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
        
    return render_template('/main/board_add.html',form=form,board_content_idx=board_content_idx,error=error)



@clone_board_bp.route('/del/<int:board_content_idx>/<string:password>/')
def delContent(board_content_idx,password):
    db = Database() 
    ansPassword = db.executeAll("""SELECT content_password FROM board_content_table WHERE board_content_idx = '%s'"""%str(board_content_idx))[0]['content_password']
    if ansPassword == str(password):
        db.execute("""DELETE FROM board_content_table WHERE board_content_idx = '%s'""" %str(board_content_idx))
        db.execute("""DELETE FROM comment_table WHERE board_idx = '%s'""" %str(board_content_idx))

        
        db.execute("""SET @CNT = 0;""")
        db.execute("""UPDATE board_content_table SET board_content_table.board_content_idx = @CNT:=@CNT+1;""")
        db.execute("""ALTER TABLE board_content_table AUTO_INCREMENT=1;""")
        db.commit()
    else:
        flash("wrong password")
        return redirect(url_for("clone_board.content",board_content_idx=board_content_idx)) 
    return redirect(url_for("clone_board.list"))


@clone_board_bp.route('/delContent/<int:board_content_idx>/<string:comment_password>/<int:comment_idx>')
def delComment(board_content_idx,comment_password,comment_idx):
    db = Database() 
    ansPassword = db.executeAll("""SELECT password FROM comment_table WHERE board_idx = '%s' """ %str(board_content_idx))[comment_idx-1]['password']
    if str(comment_password) == ansPassword:
        db.execute("""DELETE FROM comment_table WHERE comment_idx = '%s' """ %str(comment_idx))
        db.execute("""DELETE FROM comment_table WHERE parent_comment_idx = '%s' """ %str(comment_idx))
        db.execute("""SET @CNT = 0;""")
        db.execute("""UPDATE comment_table SET comment_table.comment_idx = @CNT:=@CNT+1;""")
        db.execute("""ALTER TABLE comment_table AUTO_INCREMENT=1;""")
        db.commit()
    else:
        flash("wrong password")
    return redirect(url_for("clone_board.content",board_content_idx=board_content_idx))



@clone_board_bp.route('/subCommentAdd/<int:board_content_idx>/<int:parent_comment_idx>',methods=['POST','GET'])
def subCommentAdd(board_content_idx,parent_comment_idx):
    db = Database() 
    form = CommentAddForm()
    if request.method == "POST":
        if form.validate_on_submit():
            username = form.username.data
            password = form.password.data
            comment = form.content_text.data
            comment_idx = db.executeAll("""SELECT COUNT(*) FROM comment_table WHERE board_idx='%s'""" %(board_content_idx))
            ip = get_covered_ip()
            db.executeAll("""INSERT INTO comment_table (comment,username,password,write_time,board_idx,parent_comment_idx,comment_idx,write_ip) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')""" % (comment, username,password,datetime.now(),board_content_idx,parent_comment_idx,comment_idx[0]['COUNT(*)']+1,ip)) 
            db.commit()
        else:
            flash("wrong input")

    return redirect(url_for("clone_board.content",board_content_idx=board_content_idx)) 

    

@clone_board_bp.route('/add',methods=['POST','GET'])
def add():
    db = Database() 
    form = ContentAddForm()
    
    if request.method == 'POST' and not form.validate_on_submit():
        error = "데이터 양식이 맞지 않습니다"
        flash(error)
    elif request.method == 'POST':
        title = form.content_title.data
        text = form.content_text.data
        print(text)
        username = form.username.data
        password = form.password.data
        db.execute("""INSERT INTO board_content_table (board_content,board_content_title,write_time,write_user_name,content_password,write_ip) VALUES ('%s','%s','%s','%s','%s','%s')""" % (text, title,datetime.now(),username,password,get_covered_ip())) 
        db.commit()
        return redirect(url_for("clone_board.list"))
    return render_template('/main/board_add.html',form=form,modify=0)