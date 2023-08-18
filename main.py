'''
Main file
'''
from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    '''
    This is the home route
    '''
    return "<h1>Hello from USIU</h1>"

if __name__ == "__main__":
    app.run(port=5005)
