# Start a swarm
docker-machine ssh swmaster docker swarm init --advertise-addr $(docker-machine ip swmaster)

"""
docker swarm join \
    --token SWMTKN-1-0vlfy1vg9o4ip9k6ghz46y91nbru58xh4igdn7xtfdiu8ow9o4-5u1clkg5aokpaahghl9ibe4u0 \
    192.168.99.100:2377
"""
# Swarm Token
TOKEN=$(docker-machine ssh swmaster docker swarm join-token -q manager)

docker-machine ssh swworker01 docker swarm join --token ${TOKEN} $(docker-machine ip swmaster):2377
docker-machine ssh swworker02 docker swarm join --token ${TOKEN} $(docker-machine ip swmaster):2377