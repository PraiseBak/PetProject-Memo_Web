from app import app
app.run(host='0.0.0.0',port=80)



"""


app = Flask(__name__)

@app.route('/')s

def hello():
	return '<h1>Hello world!</h1>'


@app.route('/user/<name>')

def user(name):
	return render_template('user.html', name=name)



if __name__ == '__main__':
	app.run(debug=True)
"""
