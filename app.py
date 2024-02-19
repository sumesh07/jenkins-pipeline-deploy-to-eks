from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Welcome to nginx! Thank you for using nginx.'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
