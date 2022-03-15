1. Run 2 containers postgres
docker run -d --name db1 postgres:12.1
docker run -d --name db2 postgres:12.1

2. Show source folder for volume
docker inspect db1 -f '{{ json .Mounts }}' | python -m json.tool

3. Create volume
docker volume create website
sudo cp -r /home/ec2-user/environment/content-widget-factory-inc/web/* /var/lib/docker/volumes/website/_data/

4. Attach created volume to apache2
docker run -d --name web1 -p 80:80 -v website:/usr/local/apache2/htdocs:ro httpd:2.4

5. Delete unused volumes
docker volume prune