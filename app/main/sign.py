from flask import Blueprint, request, render_template, flash, redirect, url_for
from werkzeug.security import generate_password_hash
from werkzeug.utils import redirect
from app.module.dbModule import Database
from app.forms.forms import UserCreateForm
from app.module.dbModule import Database

sign_bp = Blueprint('sign',__name__,url_prefix='/')
@sign_bp.route('/sign',methods=['GET','POST'])

def sign():
	form = UserCreateForm()
	db = Database()
	if request.method == 'POST' and	form.validate_on_submit():
		user = db.execute("SELECT id FROM user WHERE id = '%s'" %(form.username.data))
		if user == 0:
			id, password = form.username.data, form.password1.data
			db.execute("""INSERT INTO user (id,password) VALUES ('%s','%s')""" % (form.username.data, form.password1.data))
			user = db.executeAll("SELECT id,password FROM user WHERE id = '%s'" % (form.username.data))
			db.commit()
			return redirect(url_for('main.index'))
		else:
			flash("이미 존재하는 사용자입니다")

	return render_template('/main/sign.html',form=form)
