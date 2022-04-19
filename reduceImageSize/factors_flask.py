from flask import Flask
from flask_api import status
from factors import find_factors
from timeit import default_timer

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello from Factoring Server. Please try localhost:5000/number with positive integer'

@app.route('/<path:path>')
def unsupported(path):
    return 'Hello from Factoring Server. Factoring of "'+path+'" is not supported. Please try localhost:5000/number with positive integer', status.HTTP_400_BAD_REQUEST

@app.route('/<int:number>')
def factor(number):
    if number == 0:
        return "Any positive integer is a factor of 0."
    start = default_timer()
    result = find_factors(number)
    end = default_timer()
    return "Factors of "+str(number)+" are "+str(result).strip('[]')+". Computed in "+str(end-start)+" seconds."

if __name__ == '__main__':
    app.run(debug=False,host='0.0.0.0')
