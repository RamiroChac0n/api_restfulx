from flask import Flask
from flask_restx import Resource, Api
from dotenv import load_dotenv
import os

app = Flask(__name__)
api = Api(app)

data = os.environ.get('SECRET_KEY')
print(data)

@api.route('/hello')
class HelloWorld(Resource):
    def get(self):
        return {'hello': 'world'}

if __name__ == '__main__':
    app.run(debug=True)