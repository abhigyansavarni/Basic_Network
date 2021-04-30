export PATH="./bin:$PATH"
##### Crypto Materials 
##------------------------------
echo "Generate crypto materials !!!!!!!"

cryptogen generate --config=./crypto-config.yaml

echo "crypto materials created !!!!!!!"

echo "##################################"
##----------------------------------------
###### Channel Artifacts #####
##----------------------------------------
echo "Creating Channel Artifact"
source ./scripts/pr2_channel.sh
echo "Created Channel Artifact"
echo "##################################"

##----------------------------------------
###### Start Docker container #####
##----------------------------------------
echo "Starting Docker container"
source ./scripts/pr3_docker.sh
echo "All container are up and running"
echo "####################################"
##----------------------------------------
###### ENV variables for Peers #####
##----------------------------------------

# docker exec -it cli /bin/bash -e  ./scripts/env_abhi.sh

# docker exec -it cli /bin/bash -e  ./scripts/env_sava.sh

echo "Network setup done. !!!!!!!!!!!!!!!!!"