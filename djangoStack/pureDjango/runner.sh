#!/bin/bash

docker build -t dj -f base_image/Dockerfile.django .
if [ $1="superuser" ]; then
	# django-with-migrations-superuser:
	index=2
else
	# django-with-migrations:
	index=1
fi
docker build -t dj_mig -f Dockerfile.demo$index --build-arg BaseImage=dj .
docker run -d --rm -p 8000:8000 dj_mig