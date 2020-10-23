#!/usr/bin/env bash
gunicorn --workers=3 --error-logfile /tmp/backend-error.log --access-logfile /tmp/backend-access.log --bind 0.0.0.0:5001 api.v1.app:app
