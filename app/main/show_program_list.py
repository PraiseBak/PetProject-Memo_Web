from flask import Blueprint, request,url_for, render_template, flash, request, session, g

show_program_list_bp = Blueprint('show_program_list', __name__, url_prefix='/')
@show_program_list_bp.route('/show_program_list', methods=['GET','POST'])



def show_program_list(data = []): 
	data = request.args.get('search')
	if data != None:
		from app.__init__ import crawl
		url = []
		url.append("https://github.com/PraiseBak/PetProject-Memo_Web/blob/master/app/images/add_search.PNG?raw=true")
		url.append("https://github.com/PraiseBak/PetProject-Memo_Web/blob/master/app/images/check_list.PNG?raw=true")

		#url = crawl.netflixSearch(data)
		data = url

	if data == None:
		data = "";


	return render_template('/main/show_program_list.html',data = data)

