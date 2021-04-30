# ---------- Update ENV variables for sava --------------------

CORE_PEER_LOCALMSPID="savaMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/sava.example1-network.com/users/Admin@sava.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.sava.example1-network.com:9051
######•	Peer0 Joining
peer channel join -b example1channel.block
echo "peer joined the channel !!!!!!"

###  sava

CORE_PEER_LOCALMSPID="savaMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/sava.example1-network.com/users/Admin@sava.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.sava.example1-network.com:9051

peer channel update -o orderer.example1-network.com:7050 -c example1channel -f ./channel-artifacts/savaMSPanchors.tx

echo "Anchor peer updated !!!!!!"
