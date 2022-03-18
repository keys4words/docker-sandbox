- quorum = (n+1)/2
- fault tolerance = (n-1)/2
- odd managers

1. master node
docker swarm init --advertise-addr <ip>
docker node ls
docker node rm <node-name>  # remove node from list 

docker swarm join-token manager # add master node
docker swarm join-token worker  # add worker node
docker node promote <node_name>  # promote worker node to be master node

2. orchestration at master node
- creation
docker service create --replicas=3 -p 8080:80 --name app <image>   # create 3 instances app1, app2, app3 on worker nodes
docker service create --mode global my-monitoring-service     # create global service
- updating
docker service update --replicas=4 <name>

3. worker node
docker swarm join --token <token>
docker swarm leave # exit from cluster

4. up destroyed cluster
docker swarm init --force-new-cluster --advertise-addr <ip>

# docker networking

1. create overlay network for docker swarm
docker network create --driver overlay --subnet 10.0.9.0/24 my-overlay-network
2. attach containers to overlay network
docker service create --replicas 2 --netwrok my-overlay-network nginx
3. ingress network with loadbalancer
docker service create \
    --replicas=2 \
    -p 80:5000 \
    my-web-server

4. docker stack
docker stack deploy
