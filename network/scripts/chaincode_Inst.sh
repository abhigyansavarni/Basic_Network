### Configuration Checks for Dev Mode
### Step 1: In the docker-compose.yml file, make sure the TLS_ENABLED property is set to False for each propertyregistration ### authority, peer, service, chaincode and CLI container .
### CORE_PEER_TLS_ENABLED=false
### Step 2: You need to ensure that the peers start in “Development mode”. For this, you need to make the following change. 
### In docker-compose-peer.yml
### command: peer node start  --peer-chaincodedev=true
### Step 3: The service to start the chaincode container should be included inside the docker-compose.yml file.


### Starting the Chaincode Container

### docker exec -it chaincode /bin/bash -lic "npm run start-dev"

### npm install

### npm run start-dev

### Chaincode Installation -- This has to be done 1st time only
### Installation is to be done on all pears or at least one peer of each organaization.
#docker exec -it cli /bin/bash
### --------
version=1.1
CORE_PEER_LOCALMSPID="abhiMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/abhi.example1-network.com/users/Admin@abhi.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.abhi.example1-network.com:7051

peer chaincode install -n exnet -v ${version} -l node -p /opt/gopath/src/github.com/hyperledger/fabric/peer/chaincode/

### -----
CORE_PEER_LOCALMSPID="savaMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/sava.example1-network.com/users/Admin@sava.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.sava.example1-network.com:9051

peer chaincode install -n exnet -v ${version} -l node -p /opt/gopath/src/github.com/hyperledger/fabric/peer/chaincode/


###  Chaincode Instantiation
### Instantiation is to be done on only one peer of any one organaization.
CORE_PEER_LOCALMSPID="abhiMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/abhi.example1-network.com/users/Admin@abhi.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.abhi.example1-network.com:7051

peer chaincode instantiate -o orderer.example1-network.com:7050 -C example1channel -n exnet -l node -v ${version} -c '{"Args":["org.example1-network.propnet:instantiate"]}' -P "OR ('abhiMSP.member','savaMSP.member')"

