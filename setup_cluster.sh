# Setup the cluster
docker-machine create -d virtualbox swmaster
docker-machine create -d virtualbox swworker01
docker-machine create -d virtualbox swworker02