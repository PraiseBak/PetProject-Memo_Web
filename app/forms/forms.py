from flask_wtf import FlaskForm
from wtforms import StringField, TextAreaField, PasswordField
from wtforms.fields.html5 import EmailField
from wtforms.validators import DataRequired, Length, EqualTo, Email

class UserCreateForm(FlaskForm):
    username = StringField('사용자이름', validators=[DataRequired(), Length(min=3, max=25)])
    password1 = PasswordField('비밀번호', validators=[
        DataRequired(), EqualTo('password2', '비밀번호가 일치하지 않습니다')])
    password2 = PasswordField('비밀번호확인', validators=[DataRequired()])

class UserLoginForm(FlaskForm):
    username = StringField('사용자이름', validators=[DataRequired(), Length(min=3, max=25)])
    password = PasswordField('비밀번호', validators=[DataRequired()])


class UserAddCheck(FlaskForm):
    checklist_input = StringField('추가할 내용', validators=[DataRequired(), Length(min=1, max=100)])
    content_idx = StringField('게시판 인덱스')

class ContentAddForm(FlaskForm):
    content_title = StringField('제목', validators=[DataRequired(), Length(min=1, max=30)])
    content_text = StringField('', validators=[DataRequired(), Length(min=1, max=100)])
