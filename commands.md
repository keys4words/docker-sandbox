docker run --name httpd -p 8080:80 -v $(pwd)/web:/usr/local/apache2/htdocs:ro -d httpd:2.4

docker run --name webtemplate -d httpd
docker exec -it webtemplate bash

apt update && apt install git -y
git clone https://github.com/linuxacademy/content-widget-factory-inc.git /tmp/widget-factory-inc
rm htdocs/index.html
cp -r /tmp/widget-factory-inc/web/* htdocs/
exit

docker commit <container-id> keys4words/testweb:v1
# v1 has 244 MB size

# to decrease size of container
docker exec -it webtemplate bash
rm -rf /tmp/widget-factory-inc/
apt remove git -y && apt autoremove -y && apt clean
exit

docker commit <container-id> keys4words/testweb:v2
# v1 has 165 MB size

docker run -d --name web1 -p 8080:80 keys4words/testweb:v2