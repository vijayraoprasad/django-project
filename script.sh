#!/bin/bash

cd django-project

source my_env/bin/activate

cd djangoproject

python manage.py collectstatic

python manage.py migrate

sudo systemctl restart gunicorn

sudo systemctl restart nginx

sudo systemctl status gunicorn

sudo systemctl status nginx