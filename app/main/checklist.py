from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from app.module.dbModule import Database
from app.forms.forms import UserAddCheck


checklist_bp = Blueprint('checklist',__name__,url_prefix='/')


@checklist_bp.route('/checklist',methods=['GET','POST'])

def checklist():
	db = Database()
	if g.user == None:
		return redirect(url_for('login.login'))
	form = UserAddCheck()
	user_idx = g.idx
	check_list_data = db.executeAll("SELECT content,content_idx FROM check_list WHERE user_idx = '%s' " % (user_idx))

	if request.method == 'POST' and form.content_idx.data != "":
		delete_content_idx = int(form.content_idx.data)
		db.execute("""DELETE FROM check_list WHERE content_idx='%s'""" % (str(delete_content_idx)))
		db.commit()
		form.content_idx.data = ""
		return redirect(url_for('checklist.checklist'))

	elif request.method == 'POST' and form.validate_on_submit():
		data = form.checklist_input.data
		db.execute("""INSERT INTO check_list (user_idx,content) VALUES ('%s','%s')""" % (user_idx, data))
		db.commit()
		return redirect(url_for('checklist.checklist'))

	elif request.method == 'POST' and not form.validate_on_submit() and form.content_idx.data == "":
		error = "입력데이터는 1자이상 100자 미만이어야 합니다."
		flash(error)



	return render_template('/main/checklist.html',form=form,check_list_data=check_list_data)
