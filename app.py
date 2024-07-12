from flask import Flask
from flask_cors import CORS
from dotenv import load_dotenv
import os

def create_app():
    # load_dotenv()
    project_name = os.environ["GOOGLE_PROJECT"]
    print(project_name)
    app = Flask(__name__)
    CORS(app, resources={r"/*": {"origins": "*"}})

    @app.route("/hello", methods=["POST", "GET"])
    def hello():
        return "hello, " + project_name
    
    return app
