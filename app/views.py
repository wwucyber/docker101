from flask import Flask

application = Flask(__name__, template_folder='.')

@application.route('/')
def home():
   return "Hello world!"


if __name__ == '__main__':
    application.run(host='0.0.0.0', debug=False)

