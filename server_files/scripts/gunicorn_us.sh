#!/usr/bin/env bash
gunicorn --workers=3 --error-logfile /tmp/users_search-error.log --access-logfile /tmp/users_search-access.log --bind 0.0.0.0:5000 web_flask.users_search:app
