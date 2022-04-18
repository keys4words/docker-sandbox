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

# buildtime-runtime
django polls app with routes:
1. localhost:8000/admin/ - admin panel login/pass - admin/admin
2. localhost:8000/polls/ - show polls (you need create one/ones in admin panel)
- deploy django with sqlite3 & migrate via scripts - Dockerfile.runtime
- deploy django with sqlite3 & migrate with db persistance - Dockerfile.buildtime

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
deploy simple static app with multistaged image