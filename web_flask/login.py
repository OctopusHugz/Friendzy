#!/usr/bin/python3
""" objects that handle all default RestFul API actions for Users """
from sqlalchemy.sql.sqltypes import String
from models import storage
from models.user import User
from models.form import SignupForm, LoginForm
from flask import Flask, render_template, flash, redirect, request, url_for
import requests
from flask_cors import CORS
import os
app = Flask(__name__)
cors = CORS(app, resources={r"": {"origins": "*"}})
SECRET_KEY = os.urandom(32)
app.config['SECRET_KEY'] = SECRET_KEY


@app.teardown_appcontext
def close_db(error):
    """ Remove the current SQLAlchemy Session """
    storage.close()


@app.route('/landing', strict_slashes=False, methods=['GET'])
def landing():
    return render_template("landing.html")

@app.route('/register', methods=['GET'], strict_slashes=False)
def register():
    """
    Retrieves the list of all interest objects
    or a specific interest
    """
    form = SignupForm()
    return render_template(
        'register.html',
        form=form
    )


@app.route('/login', methods=['GET', 'POST'])
def login():
    """
    User sign-up page.

    GET requests serve sign-up page.
    POST requests validate form & user creation.
    """
    name = ""
    form = LoginForm()
    email = form.email.data
    password = form.password.data
    all = storage.all(User)
    for user in all.values():
        if email == user.email:
            if user.check_password(password):
                requests.post('http://127.0.0.1:5000/layout/' + user.id,
                          headers={'Content-Type': 'application/json'})
<<<<<<< HEAD
                #requests.post('http://127.0.0.1:5000/layout/' + user.id,
                #          headers={'Content-Type': 'application/json', 
                #                    'User-Agent': 'viet'})
                return redirect("https://friendzfor.me/interests_list")
                #return redirect("http://127.0.0.1:5000/interests_list")
=======
                # Use url when running from server, local host in dev environment
                # return redirect("https://friendzfor.me/interests_list")
                return redirect("http://127.0.0.1:5000/interests_list")
>>>>>>> dfce995c80941b849cec1baf35fba966b4b60517
    if request.method == "POST":
        flash('invalid password or email')
    return render_template(
        'login.html',
        form=form
    )


@app.route('/signup', methods=['GET', 'POST'])
def signup():
    """
    User sign-up page.

    GET requests serve sign-up page.
    POST requests validate form & user creation.
    """
    form = SignupForm()
    if request.method == 'POST':
        if not form.validate():
            for key, value in form.errors.items():
                string = str(value).strip("[]'")
                if key != "csrf_token":
                    flash("'{}'    {}".format(key, string))
                    return render_template('register.html', form=form)
        new = User(
                    first_name=form.first_name.data,
                    last_name=form.last_name.data,
                    email=form.email.data,
                    password=form.password.data
                    )
        all = storage.all(User)
        for user in all.values():
            if new.email == user.email:
                flash('A user already exists with that email address.')
                return render_template('register.html', form=form)
        new.save()
        return redirect("http://friendzyfor.me/interests_list")
    return render_template('register.html')

if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5003, debug=True)
