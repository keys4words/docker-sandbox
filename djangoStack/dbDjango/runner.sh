#!/bin/bash

# build base Django image with gunicorn
docker build -t base -f base_image/Dockerfile.gunicorn base_image/

# create network and connect postgres db to it
docker network create polls_net
docker run -d --name db -p 5432:5432 --network polls_net -e POSTGRES_DB=pollsdb -e POSTGRES_USER=pollsuser -e POSTGRES_PASSWORD=pollspass -v ~/Documents/dockerSandbox/djangoStack/db_data:/var/lib/postgresql/data postgres:13.3

# build Django app image above base image
docker build -t polls -f Dockerfile.postgres --build-arg BaseImage=base .

# populate db & create superuser
# docker run -it --rm --network polls_net polls python manage.py loaddata initial_data.json
# docker run -it --rm --network polls_net polls python manage.py createsuperuser

# run app container
docker run -it --rm --network polls_net -p 8000:8000 polls

# run tests
# docker run -it --rm --network polls_net -p 8000:8000 polls python manage.py test