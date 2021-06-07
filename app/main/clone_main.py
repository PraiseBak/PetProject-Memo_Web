from typing import Collection
from flask import Blueprint, request,url_for, render_template, flash, request, session, g

clone_main_bp = Blueprint('clone_main', __name__, url_prefix='/')
@clone_main_bp.route('/clone_main', methods=['GET','POST'])

def clone_main():
    return render_template('/main/clone_main.html')