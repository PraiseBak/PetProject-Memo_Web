from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from app.module.dbModule import Database
from app.forms.forms import UserAddCheck

clone_board_bp = Blueprint('clone_board',__name__,url_prefix='/')
@clone_board_bp.route('/clone_board',methods=['GET','POST'])

def board():
    db = Database()
    content_list = db.executeAll("SELECT board_content FROM board_content_table")
    return render_template('/main/board.html',content_list=content_list)
