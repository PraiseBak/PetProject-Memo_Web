from flask import Blueprint, request, render_template, flash, redirect, url_for
from flask import current_app as app
import app.main.utils as utils
main = Blueprint('main',__name__,url_prefix='/')
@main.route('/main',methods=['GET'])
@main.route('/',methods=['GET'])

def index():
	url = utils.get_ip()
	return render_template('/main/index.html',url=url)

