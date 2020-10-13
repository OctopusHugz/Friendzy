#!/usr/bin/python3
""" objects that handle all default RestFul API actions for Users """
from models.interest import Interest
from models import storage
from api.v1.views import app_views
from flask import abort, jsonify


@app_views.route('/interests', methods=['GET'], strict_slashes=False)
def get_interests():
    """
    Retrieves the list of all interest objects
    or a specific interest
    """
    all_interests = storage.all(Interest).values()
    list_interests = []
    for interest in all_interests:
        list_interests.append(interest.to_dict())
    return jsonify(list_interests)


@app_views.route('/interests/<name>', methods=['GET'], strict_slashes=False)
def get_interests_name(name):
    """ Retrieves an interest based on name"""
    all_interests = storage.all(Interest).values()
    for interest in all_interests:
        if interest.to_dict().get("name") == name:
            result = storage.get(Interest, interest.to_dict().get("id"))
    if not result:
        abort(404)
    return jsonify(result.to_dict())
