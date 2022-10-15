# ci_flask
1. multystaging build via target in docker-compose
- running pylint - look report at pyling.html
- running pytest - look report at pytest_report.html
- see coverage report in htmlcov/index.html
3. build Dockerfile.debug as debugging image above base
docker run --rm -it -p 5000:5000 debug
- running pdb

# 


# db
play with db in docker
# mongodb making dumps in /dump/
mongodump -u user -p pass
mongorestore <url-dump> -u user -p pass


# dockerize Flask
1. flask_cat - random cat simple flask app + deploy via AWS Elastic Beanstalk
2. market - ecomm flask app with dev in sqlite3 & prod in postgres 
use login & pass - tester/tester
3. FoodTrucks - San-Fransisco interactive map with searching
- backend - Flask API + ElasticSearch Engine
- frontend - React

# dockerize Golang
1. appWithoutLib - deploy simple static golang app with multistaged image
2. echoApp - golang web app with Echo framework

# Reduce image size
- Dockefile.standard - 940Mb
- Dockerfile.slim - 155Mb
- Dockerfile.alpine - 98Mb
- Dockerfile.centos - 655Mb