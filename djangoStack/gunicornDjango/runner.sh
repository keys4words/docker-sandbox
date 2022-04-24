#!/bin/bash

# django-with-gunicorn
prefix="gunicorn"

if [ $1 != "$prefix" ]; then
	# django-with-uwsgi
	prefix="uwsgi"
fi

docker build -t dj -f base_image/Dockerfile.$prefix base_image/
docker build -t dj_$prefix -f Dockerfile.$prefix --build-arg BaseImage=dj .
docker run -d --rm -p 8000:8000 dj_$prefix