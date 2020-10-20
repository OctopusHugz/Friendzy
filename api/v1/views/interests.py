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


# @app_views.route('/interests/<name>', methods=['GET'], strict_slashes=False)
# def get_interests_name(name):
#     """ Retrieves an interest based on name"""
#     all_interests = storage.all(Interest).values()
#     result = ""
#     for interest in all_interests:
#         if interest.to_dict().get("name") == name:
#             result = storage.get(Interest, interest.to_dict().get("id"))
#     if len(result) == 0:
#         abort(404)
#     return jsonify(result.to_dict())


@app_views.route('/interests/<interest_id>', methods=['GET'], strict_slashes=False)
def get_interests_by_id(interest_id):
    """ Retrieves an interest based on name"""
    all_interests = storage.all(Interest).values()
    result = ""
    for interest in all_interests:
        int_id = str(interest.to_dict().get('id'))
        if int_id == interest_id:
            print('Found the interest!!!')
            result = storage.get(Interest, interest.to_dict().get("id"))
    print("Result is {}".format(result))
    if not result:
        abort(404)
    return jsonify(result.to_dict())
