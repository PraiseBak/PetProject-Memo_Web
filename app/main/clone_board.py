from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from app.module.dbModule import Database
from app.forms.forms import CommentAddForm, ContentAddForm, UserAddCheck
from datetime import datetime
from app.main.utils import *
clone_board_bp = Blueprint('clone_board',__name__,url_prefix='/clone_board') 


def isLogged():
    user = session.get('user_id')
    logged = '0'
    if user:
        logged = '1'
    return logged    

@clone_board_bp.route('/')
@clone_board_bp.route('/list')
def list():
    db = Database() 
    page = request.args.get('page', type=int, default=1)
    page_unit = 30
    if page == 1:
        page = 0

    searchMode = request.args.get('searchMode')
    searchContent = request.args.get('content')
    pageSQL,getCountSQL = getPageQuery(page,page_unit,searchMode,searchContent)
    contentCount = db.executeAll(getCountSQL)
    contentCount = contentCount[0]['COUNT(write_user_name)']
    content_list = db.executeAll(pageSQL)
    #contentCount= db.executeAll(getAutoIncrementQuery())[0]['AUTO_INCREMENT'] -1

    maxPage = int(contentCount / page_unit) + 1
    
   
    
    if page > maxPage:
        page = maxPage
        flash("존재하지 않는 페이지입니다")
        return redirect(url_for('clone_board.list'))
        
    if page == 0:
        page = 1
    if page + 9 < maxPage:
        maxPage = page + 9
    page_btn_list = getPageBtnList(page,maxPage)
    
    return render_template('/main/board.html',content_list=content_list,max_page = maxPage,
    cur_page=page,page_btn_list=page_btn_list,searchMode=searchMode,searchContent=searchContent)


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
        db.executeAll("""INSERT INTO comment_table (comment,username,password,write_time,board_idx,comment_idx,write_ip,login_user)
         VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')""" % (comment, username,password,datetime.now(),board_content_idx,comment_idx[0]['COUNT(*)']+1,ip,isLogged())) 
        db.commit()
        return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    comment = db.executeAll("""SELECT * FROM comment_table WHERE board_idx = %s""" %str(board_content_idx))
    return render_template('/main/board_content.html',content=data,form=form,board_content_idx=board_content_idx,comment_data=comment)


@clone_board_bp.route('/modify/<int:board_content_idx>',methods=['POST','GET'])
@clone_board_bp.route('/modify/<int:board_content_idx>/<string:password>',methods=['POST','GET'])
def modify(board_content_idx,password = None):
    db = Database() 
    
    
    data = db.executeAll("""SELECT * FROM board_content_table WHERE board_content_idx = %s""" %str(board_content_idx))
    error = None
    form = ContentAddForm()
    if data[0]['login_user'] == 1 and (data[0]['write_user_name']==session.get('user_id')):
        if request.method == 'POST':
            if form.validate_on_submit():
                db.execute("""UPDATE board_content_table SET write_time='%s',board_content_title='%s',board_content='%s' WHERE board_content_idx = '%s'""" 
                % (datetime.now(),form.content_title.data,form.content_text.data,str(data[0]['board_content_idx']) ))
                db.commit() 
                return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
            else:
                error = "수정 데이터 양식이 맞지 않습니다"
                flash(error)
                return render_template('/main/board_add.html',form=form,board_content_idx=board_content_idx,error=error)
                
        if password == None:
            password = ""
            
        elif data[0]['content_password'] == password:
            content_title = data[0]['board_content_title']
            content_text = data[0]['board_content']
            username = data[0]['write_user_name']
            password = "****"
            form = ContentAddForm(content_title=content_title,content_text=content_text,username=username,password=password,modify=True)
            
        elif password == '-1' and session.get('user_id') == data[0]['write_user_name']:
            content_title = data[0]['board_content_title']
            content_text = data[0]['board_content']
            username = data[0]['write_user_name']
            password = "****"
            form = ContentAddForm(content_title=content_title,content_text=content_text,username=username,password=password,modify=True)
                
        else:
            error = "wrong password"
            flash(error)
            return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))
        return render_template('/main/board_add.html',form=form,board_content_idx=board_content_idx,error=error)

    else:
        error = "not same user"
        flash(error) 
        return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))

    return redirect(url_for('clone_board.content',board_content_idx=board_content_idx))



@clone_board_bp.route('/del/<int:board_content_idx>/<string:password>/')
def delContent(board_content_idx,password=None):
    db = Database() 
    data = db.executeAll("""SELECT write_user_name,login_user,content_password FROM board_content_table WHERE board_content_idx = '%s'"""%str(board_content_idx))
    username = data[0]['write_user_name']
    loginUser = data[0]['login_user']
    ansPassword = data[0]['content_password']
    if loginUser == 1:
        if username == session.get('user_id'):
            

    else:

        if ansPassword == str(password):
            db.execute("""DELETE FROM board_content_table WHERE board_content_idx = '%s'""" %str(board_content_idx))
            db.execute("""DELETE FROM comment_table WHERE board_idx = '%s'""" %str(board_content_idx))
            db.autoIncreSet("board_content_table","board_content_idx")
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
        db.autoIncreSet("comment_table","coment_idx")
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
            db.executeAll("""INSERT INTO comment_table (comment,username,password,write_time,board_idx,parent_comment_idx,comment_idx,write_ip,login_user)
             VALUES ('%s','%s','%s','%s','%s','%s','%s','%s','%s')""" % (comment, username,password,datetime.now(),board_content_idx,parent_comment_idx,comment_idx[0]['COUNT(*)']+1,ip,isLogged())) 
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
        username = form.username.data
        password = form.password.data
        if isLogged():
            password = db.executeAll("""SELECT password FROM user WHERE id='%s'"""%(session.get('user_id')))[0]['password']
            db.execute("""INSERT INTO board_content_table (board_content,board_content_title,write_time,write_user_name,content_password,write_ip,login_user)
         VALUES ('%s','%s','%s','%s','%s','%s','%s')""" % (text, title,datetime.now(),username,password,get_covered_ip(),isLogged())) 
        db.commit()
        return redirect(url_for("clone_board.list"))
    
    
    return render_template('/main/board_add.html',form=form,modify=0,username=session.get('user_id'))

@clone_board_bp.route('/recommend/<int:board_content_idx>/<int:mode>',methods=['POST','GET'])
def recommendProcess(board_content_idx,mode):
    curIp = socket.gethostbyname(socket.gethostname())
    db = Database()
    #중복 체크
    recommend_mode = "recommend"
    if mode != 1:
        recommend_mode = "unrecommend"
    data = db.executeAll("""SELECT * FROM recommend_table WHERE board_content_idx ='%s' and %s_ip='%s'""" %(str(board_content_idx),recommend_mode,str(curIp)))
    if len(data) != 0:
        flash("중복된 요청입니다.")
    else:
        db.executeAll("""INSERT INTO recommend_table (board_content_idx, %s_ip) VALUES (%s,'%s') """ %(recommend_mode,board_content_idx,curIp))
        db.executeAll("""UPDATE board_content_table SET %s=%s+1 WHERE board_content_idx='%s' """ %(recommend_mode,recommend_mode,str(board_content_idx)))
        db.commit()
    return redirect(url_for("clone_board.content",board_content_idx=board_content_idx)) 
    
    