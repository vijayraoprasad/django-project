#!/bin/bash

cd /home/ubuntu/django-project/djangoproject

source /home/ubuntu/django-project/my_env/bin/activate

python manage.py makemigrations

python manage.py migrate

python manage.py collectstatic

sudo systemctl restart gunicorn

sudo systemctl restart nginx

sudo systemctl status gunicorn

sudo systemctl status nginx