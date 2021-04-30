# #####-- start all the containers --- #################################

 docker-compose -f ./docker-compose.yaml up -d

 echo "!!!!!!UPPPP!!!!!!"

# ####### •	Login to the CLI Container #####################################

 docker exec -it cli /bin/bash -e  ./scripts/env_abhi.sh

 docker exec -it cli /bin/bash -e  ./scripts/env_sava.sh

 

#source ./scripts/abhi.sh

