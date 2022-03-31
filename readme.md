# deploy static website
simple static html/css website via dockerfile

# dockerize Flask
deploy flask ecomm app with postgres db, gunicorn & nginx via docker-compose
1. cd dockerizeFlask
2. docker-compose up -d --build
docker-compose exec web python manage.py create_db
3. docker exec -it <container_name_4_web> /bin/bash
4. use 'PGPASSWORD=admin psql -U admin market' to connect to psql
5. 

# dockerize Golang
deploy simple static app with multistaged image