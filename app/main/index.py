from flask import Blueprint, request, render_template, flash, redirect, url_for
from flask import current_app as app

main = Blueprint('main',__name__,url_prefix='/')

@main.route('/main',methods=['GET'])
def index():
	testData = "just keep going stop fight"
	return render_template('/main/index.html',testHtml=testData)

