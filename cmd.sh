#!/bin/sh

gunicorn -b0.0.0.0:8000 -w4 -keventlet --reload devaluation.wsgi

