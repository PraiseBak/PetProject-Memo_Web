from flask import Blueprint, url_for, render_template, flash, request, session, g


show_program_list_bp = Blueprint('show_program_list', __name__, url_prefix='/')


@show_program_list_bp.route('/show_program_list', methods=['POST','GET'])

def show_program_list(data = ''):
	print("무자식")
	if data == '':
		data = request.args.get('kw', type=str, default='')


	return render_template('/main/show_program_list.html',data = data)