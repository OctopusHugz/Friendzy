#!/usr/bin/python3
""" Starts a Flask Web Application """
from models import storage
from models.interest import Interest
from flask import Flask, render_template
app = Flask(__name__)

@app.teardown_appcontext
def close_db(error):
    """ Remove the current SQLAlchemy Session """
    storage.close()


@app.route('/interests_list', strict_slashes=False)
def interests_list():
    """ displays a HTML page with a list of interests """
    interests = storage.all(Interest).values()
    interests = sorted(interests, key=lambda k: k.name)
    ###CHANGE NAME OF HTML FILE AS NEEDED###
    return render_template('interests_list.html', interests=interests)


if __name__ == "__main__":
    """ Main Function """
    app.run(host='0.0.0.0', port=5000)