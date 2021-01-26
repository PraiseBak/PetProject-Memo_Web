from flask import Blueprint, request, render_template, flash, redirect, url_for
from app.main.utils import get_ip
from werkzeug.security import generate_password_hash
from werkzeug.utils import redirect

from app.forms.forms import UserCreateForm

sign_bp = Blueprint('sign',__name__,url_prefix='/')

@sign_bp.route('/sign',methods=['GET'])


def sign():


	form = UserCreateForm()
	if form.validate_on_submit():
		print(form.username.data)
		print(form.password1.data)
		print(form.password2.data)








	url = get_ip()
	return render_template('/main/sign.html',url=url,form=form)
