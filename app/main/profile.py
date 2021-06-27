from flask import Blueprint, request, render_template, flash, redirect, url_for, g,session
from app.module.dbModule import Database
from app.forms.forms import CommentAddForm, ContentAddForm
from app.main.utils import *

profile_bp = Blueprint('profile',__name__,url_prefix='/profile')

@profile_bp.route('/<string:username>/')
def profile(username):
    
    return render_template('/main/profile.html')

