# deploy static website
simple static html/css website via dockerfile

# dockerize Flask
deploy flask ecomm app with postgres db via docker-compose
1. docker build -t flaskapp_dev .
2. docker run -p 9000:9000 -e DEBUG=1 -d flaskapp_dev