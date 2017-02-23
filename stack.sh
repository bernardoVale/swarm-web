eval $(docker-machine env swmaster)

#Creates the network for my stack
docker network create -d overlay website