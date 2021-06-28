#!/usr/bin/python3
""" Blueprint for API """
from flask import Blueprint
from api.v1.views.users import *
from api.v1.views.interests import *

app_views = Blueprint('app_views', __name__, url_prefix='/api/v1')
