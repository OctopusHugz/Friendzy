#!/usr/bin/python3
""" Starts a Flask Web Application """
from models.interest import Interest
from models import storage
from models.user import User
from flask import Flask, render_template, redirect, request, flash, jsonify
from models.form import UserForm
import requests
import os
from flask_cors import CORS
app = Flask(__name__)
cors = CORS(app, resources={r"/api/v1/*": {"origins": "*"}})
SECRET_KEY = os.urandom(32)
app.config['SECRET_KEY'] = SECRET_KEY
name = "User"

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
        # Show up to three cards at a time in carousel
        if i % 3 == 0 and i != 0:
            full_list.append(test_list)
            test_list = []
        test_list.append(interests[i])
        i += 1
    full_list.append(test_list)
    return render_template("home.html", full_list=full_list, name=name)


@app.route('/users_search/<interest_id>', strict_slashes=False, methods=['POST', 'GET'])
def users_search_list(interest_id):
    """ displays a HTML page with a list of users """
    payload = '{"interests": [' + interest_id + ']}'
    users = requests.post('http://127.0.0.1:5001/api/v1/users_search',
                          data=payload, headers={'Content-Type': 'application/json'}).json()
    url = 'http://127.0.0.1:5001/api/v1/interests/' + interest_id
    interest_name = requests.get(url).json().get('name')
    short_list = []
    full_list = []
    i = 0
    while i < len(users):
        short_list.append(users[i])
        # Show up to three cards at a time in carousel
        if len(short_list) == 3 or i == len(users) - 1:
            full_list.append(short_list)
            short_list = []
        i += 1
    return render_template("users.html", full_list=full_list, interest_name=interest_name, name=name)


@app.route('/layout/<id>', strict_slashes=False, methods=['GET', 'POST'])
def layout(id):
    """Display user name next to avatar"""
    user = storage.get(User, id)
    global name
    name = user.first_name + ' ' + user.last_name
    


@app.route('/profile', strict_slashes=False, methods=['GET', 'POST'])
def user_profile():
    """Display and allow edits on profile page"""
    form = UserForm()
    if request.method == "POST":
        first_name = form.first_name.data
        last_name = form.last_name.data
        email = form.email.data
        password = form.password.data
        new_email = form.new_email.data
        new_password = form.new_password.data
        all = storage.all(User)
        for user in all.values():
            # Checks valid email and allows updated settings
            if email == user.email:
                if user.check_password(password):
                    if user.email == new_email:
                        user.password = new_password
                        user.first_name = first_name
                        user.last_name = last_name
                        user.update()
                        flash('User Settings updated')
                        return render_template("profile.html", form=form, name=name)
                    for new in all.values():
                        if new_email == new.email:
                            flash('A user already exists with that email address.')
                            return render_template("profile.html", form=form, name=name)
                    user.email = new_email
                    user.password = new_password
                    user.first_name = first_name
                    user.last_name = last_name
                    user.update()
                    flash('User Settings updated')
                    return render_template("profile.html", form=form, name=name)
        flash('invalid password or email')
    return render_template("profile.html", form=form, name=name)


@app.route('/team', strict_slashes=False, methods=['GET'])
def our_team():
    # get all users *create a team model as super stretch*
    users = storage.all(User).values()
    team_list = []
    # Loop through users and find team member column set to true
    for user in users:
        if user.team_member:
            team_list.append(user)
    # Sort team members by last name
    team_list = sorted(team_list, key=lambda k: k.last_name)
    return render_template("team.html", team_list=team_list, name=name)

if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5000, debug=True)
