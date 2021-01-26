from flask import Blueprint, request, render_template, flash, redirect, url_for
from app.main.utils import get_ip

login_bp = Blueprint('login',__name__,url_prefix='/')

@login_bp.route('/login',methods=['GET'])
def login():
	url = get_ip()
	return render_template('/main/login.html',url=url)
