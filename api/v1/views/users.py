#!/usr/bin/python3
""" objects that handle all default RestFul API actions for Users """
from models.user import User
from models import storage
from api.v1.views import app_views
from flask import abort, jsonify, request


@app_views.route('/users', methods=['GET'], strict_slashes=False)
def get_users():
    """
    Retrieves the list of all user objects
    or a specific user
    """
    all_users = storage.all(User).values()
    list_users = []
    for user in all_users:
        list_users.append(user.to_dict())
    return jsonify(list_users)


@app_views.route('/users/<user_id>', methods=['GET'], strict_slashes=False)
def get_user(user_id):
    """ Retrieves an user """
    user = storage.get(User, user_id)
    if not user:
        abort(404)

    return jsonify(user.to_dict())


@app_views.route("/users_search", strict_slashes=False, methods=['POST'])
def users_search():
    """ /users_search route """
    users = storage.all(User).values()
    all_users_list = []
    filter_users_list = []
    interests_list = []
    interests_len = 0
    try:
        new_dict = request.get_json()
    except:
        return {"error": "Not a JSON"}, 400
    if request.headers['Content-Type'] != 'application/json':
        return {"error": "Not a JSON"}, 400
    for user in users:
        all_users_list.append(user.to_dict())
    if len(new_dict) == 0:
        return jsonify(all_users_list)
    if 'interests' in new_dict:
        interests_len = len(new_dict['interests'])
        interests_list = new_dict['interests']
    if interests_len == 0:
        return jsonify(all_users_list)
    if interests_len > 0:
        for user in users:
            for interest in user.interests:
                if interest.id in interests_list and user.to_dict() not in filter_users_list:
                    filter_users_list.append(user.to_dict())
    if len(filter_users_list) > 0:
        return jsonify(filter_users_list)
    return {"error": "Not found"}, 404
