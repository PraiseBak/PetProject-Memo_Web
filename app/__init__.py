import os
from flask import Flask
from app.main.index import main as main
from app.main.login import login_bp as login_bp
from app.main.sign import sign_bp as sign_bp, db


SECRET_KEY = os.urandom(32)

app = Flask(__name__)
app.config['SECRET_KEY'] = SECRET_KEY
app.register_blueprint(main)
app.register_blueprint(login_bp)
app.register_blueprint(sign_bp)



