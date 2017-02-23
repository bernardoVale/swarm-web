docker-machine ssh swmaster docker service create --name registry --publish 5000:5000 registry:2

# Making sure all nodes can use the registry
docker-machine ssh swmaster curl localhost:5000/v2/_catalog
docker-machine ssh swworker01 curl localhost:5000/v2/_catalog
docker-machine ssh swworker02 curl localhost:5000/v2/_catalog

docker tag nodesource/centos7:6.3.0 192.168.99.100:5000/nodesource/centos7:6.3.0

docker push --disable-content-trust 192.168.99.100:5000/nodesource/centos7:6.3.0