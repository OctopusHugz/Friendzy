#!/usr/bin/python3
""" Starts a Flask Web Application """
from models.interest import Interest
from models import storage
from flask import Flask, render_template
import requests
from flask_cors import CORS
app = Flask(__name__)
cors = CORS(app, resources={r"/api/v1/*": {"origins": "*"}})


@app.teardown_appcontext
def close_db(error):
    """ Remove the current SQLAlchemy Session """
    storage.close()


@app.route('/interests_list', strict_slashes=False)
def interests_list():
    """ displays a HTML page with a list of interests """
    interests = storage.all(Interest).values()
    interests = sorted(interests, key=lambda k: k.id)
    test_list = []
    full_list = []
    i = 0
    while i < len(interests):
        if i % 3 == 0 and i != 0:
            full_list.append(test_list)
            test_list = []
        test_list.append(interests[i])
        i += 1
    full_list.append(test_list)
    return render_template("home.html", full_list=full_list)


@app.route('/users_search/<interest_id>', strict_slashes=False, methods=['POST', 'GET'])
def users_search_list(interest_id):
    """ displays a HTML page with a list of users """
    payload = '{"interests": [' + interest_id + ']}'
    users = requests.post('http://127.0.0.1:5001/api/v1/users_search',
                          data=payload, headers={'Content-Type': 'application/json'}).json()
    url = 'http://127.0.0.1:5001/api/v1/interests/' + interest_id
    interest_name = requests.get(url).json().get('name')
    test_list = []
    full_list = []
    i = 0
    while i < len(users):
        test_list.append(users[i])
        if len(test_list) == 3 or i == len(users) - 1:
            full_list.append(test_list)
            test_list = []
        i += 1
    return render_template("users.html", full_list=full_list, interest_name=interest_name)


if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5000, debug=True)
