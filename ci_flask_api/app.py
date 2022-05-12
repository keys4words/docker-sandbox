from flask import Flask, request


app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello'

@app.route('/calc')
def calc():
    a = int(request.args.get('a'))
    b = int(request.args.get('b'))
    return str(sum(a, b))

def sum(a,b):
    return a+b