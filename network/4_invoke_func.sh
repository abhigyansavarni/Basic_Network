docker exec -it peer0.abhi.example1-network.com /bin/bash

peer chaincode invoke -o orderer.example1-network.com:7050 -C example1channel -n exnet -c '{"Args":["org.example1-network.propnet:createStudent","0001","Abhigyan","connect@abhigyan.com"]}'

peer chaincode invoke -o orderer.example1-network.com:7050 -C example1channel -n exnet -c '{"Args":["org.example1-network.propnet:createStudent","0002","Anamika","connect@anamika.com"]}'

peer chaincode query -o orderer.example1-network.com:7050 -C example1channel -n exnet -c '{"Args":["org.example1-network.propnet:getStudent","0001"]}'