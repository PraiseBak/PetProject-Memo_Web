from flask import Blueprint, url_for, render_template, flash, request, session, g
from werkzeug.utils import redirect
from app.forms.forms import UserLoginForm
from app.module.dbModule import Database
from werkzeug.security import generate_password_hash, check_password_hash

db = Database()
login_bp = Blueprint('login',__name__,url_prefix='/')
@login_bp.route('/login/',methods=['GET','POST'])
@login_bp.route('/login/<string:before_page>',methods=['GET','POST'])
def login(before_page=None):
	form = UserLoginForm()
	if request.method == 'POST' and form.validate_on_submit():
		error = None
		db = Database()
		user = db.executeAll("SELECT id,password FROM user WHERE id = '%s'" % (form.username.data))

		if len(user) == 0:
			user = 0
		else:
			password = user[0]['password']
			user = user[0]['id']

		if user == 0:
			error = "존재하지 않는 사용자입니다"

		elif not password == form.password.data:
			error = "비밀번호가 올바르지 않습니다."

		if error is None:
			session.clear()
			session['user_id'] = user
			print("이전 페이지:",before_page)
			if before_page == 'checklist':
				return redirect(url_for(before_page+'.checklist'))
			elif before_page != None:
				return redirect(url_for(before_page+'.list'))
			return redirect(url_for('main.index'))

		flash(error)
	return render_template('/main/login.html',form=form)

@login_bp.route('/logout/',methods=['GET','POST'])
@login_bp.route('/logout/<string:before_page>')
def logout(before_page=None):
	session.clear()
	if before_page != "checklist" and before_page != None:
		return redirect(url_for(before_page+'.list'))
	return redirect(url_for('main.index'))


@login_bp.before_app_request
def load_logged_in_user():
	user_id = session.get('user_id')
	if user_id is None:
		g.user = None
		g.idx = None
	else:
		db = Database()
		g.user = db.executeOne("SELECT id,idx FROM user WHERE id = '%s' " % (user_id))
		g.idx = g.user['idx']
		g.user = g.user['id']

