#!/bin/sh
python manage.py makemigrations && python manage.py migrate
python /app/manage.py collectstatic --noinput
/usr/local/bin/gunicorn config.wsgi -w 4 -b 0.0.0.0:8000 --chdir=/app
