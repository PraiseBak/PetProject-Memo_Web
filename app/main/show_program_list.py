from flask import Blueprint, request,url_for, render_template, flash, request, session, g
import app.um

show_program_list_bp = Blueprint('show_program_list', __name__, url_prefix='/')
@show_program_list_bp.route('/show_program_list', methods=['GET','POST'])


def show_program_list(data = ""): 
	data = request.args.get('search')
	if data != None:
		from app.__init__ import crawl
		url = crawl.netflixSearch(data)
		data = url[0]

	if data == None:
		data = "";
	

	return render_template('/main/show_program_list.html',data = data)

