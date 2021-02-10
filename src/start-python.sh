#!/bin/bash
uwsgi --socket :8001 --module app.wsgi & daphne -b 0.0.0.0 -p 3001 --ping-interval 10 --ping-timeout 120 app.asgi:application