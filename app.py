from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Welcome to nginx!
If you see this page, the nginx web server is successfully installed and working. Further configuration is required.

For online documentation and support please refer to nginx.org.
Commercial support is available at nginx.com.

Thank you for using nginx.'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
