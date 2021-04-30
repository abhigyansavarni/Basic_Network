docker-compose -f ./docker-compose.yaml down
# STOP AND DELETE THE DOCKER CONTAINERS
docker ps -aq | xargs -n 1 docker stop
docker ps -aq | xargs -n 1 docker rm -v

# DELETE THE OLD DOCKER VOLUMES
docker volume prune

# DELETE OLD DOCKER NETWORKS 
docker network prune

# VERIFY RESULTS 
docker ps -a 
docker volume ls

# Delete channel artifacts
rm -rf ./channel-artifacts/*
rm -rf ./crypto-config/*