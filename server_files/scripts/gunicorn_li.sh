#!/usr/bin/env bash
gunicorn --workers=3 --error-logfile /tmp/login-error.log --access-logfile /tmp/login-access.log --bind 0.0.0.0:5003 web_flask.login:app
