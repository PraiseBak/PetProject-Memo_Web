import os
#from app.main.NetflixCrawlSelenium import *
#crawl = NetflixCrawl()
from flask import Flask
from app.main.index import main as main
from app.main.login import login_bp as login_bp
from app.main.sign import sign_bp as sign_bp
from app.main.checklist import checklist_bp
from app.main.clone_main import clone_main_bp
from app.main.clone_board import clone_board_bp
from app.main.profile import profile_bp
from .templatetags.my_filters import times

SECRET_KEY = os.urandom(32)
app = Flask(__name__)
app.jinja_env.filters['times'] = times
app.config['SECRET_KEY'] = SECRET_KEY


app.register_blueprint(main)
app.register_blueprint(login_bp)
app.register_blueprint(sign_bp)
app.register_blueprint(checklist_bp)
#app.register_blueprint(clone_main_bp)
app.register_blueprint(clone_board_bp)
app.register_blueprint(profile_bp)

