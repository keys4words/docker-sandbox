# deploy static website
simple static html/css website via dockerfile

# args
- ARG in dockerfile
- ENV in dockerfile
- metadata LABEL in dockefile

# reusable - define configuration
- in env variables - Dockerfile.env
- hide configuration in ini file - Dockerfile.file
- configuration in command args - Dockerfile.args
- use inheritance via Dockerfile.child

# manualDjango
django polls app with routes:
1. localhost:8000/admin/ - admin panel login/pass - admin/admin
2. localhost:8000/polls/ - show polls (you need create one/ones in admin panel)
- deploy django with sqlite3 & migrate via scripts - Dockerfile.runtime
- deploy django with sqlite3 & migrate with db persistance - Dockerfile.buildtime

# reduce image size
- Dockefile.standard - 940Mb
- Dockerfile.slim - 155Mb
- Dockerfile.alpine - 98Mb
- Dockerfile.centos - 655Mb

# multiStagedImage
- using cyton to compile python project (compile.py)
- Dockerfile.standard - use compiled cpython - 957Mb (faster)
- Dockerfile.multy - compile at first stage & run on 2d stage - 155Mb(same speed)
use customed images for both stages:
- Dockerfile.cython0.28.5-full - to create image for dev stage
- Dockerfile.flask1.0.3-slim - to create image for prod stage
- Dockerfile.cython-flask-slim - use both custom images

# simpleTests
1. build Dockerfile.multi as base image with name "flask-multy"
2. build Dockerfile.tester as tester image above base image (--build-arg BaseImage=flask-multy)
docker run --rm -it -v ${PWD}:/data tests
- running pylint - look report at pyling.html
- running pytest - look report at pytest_report.html
- see coverage report in htmlcov/index.html
3. build Dockerfile.debug as debugging image above base
docker run --rm -it -p 5000:5000 debug
- running pdb

# djangoStack
1. pureDjango
- use runner script with "superuser" arg to deploy poll app with migrations & creating superuser at localhost:8000
- without superuser without any args
2. gunicornDjango



# dockerize Flask
1. simpleFlask
base flask app
- docker build -t simpleflask:v1 .
- docker run --rm -p 5001:5000 -d simpleflask:v1
- routes:
    - localhost:5001
    - localhost:5001/test

2. 
deploy flask ecomm app with postgres db, gunicorn & nginx via docker-compose
1. cd dockerizeFlask
2. docker-compose up -d --build
docker-compose exec web python manage.py create_db
3. docker exec -it <container_name_4_web> /bin/bash
4. use 'PGPASSWORD=admin psql -U admin market' to connect to psql
5. 

# dockerize Golang
1. appWithoutLib - deploy simple static golang app with multistaged image
2. echoApp - golang web app with Echo framework
