
# ---------- Update ENV variables for abhi --------------------

CORE_PEER_LOCALMSPID="abhiMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/abhi.example1-network.com/users/Admin@abhi.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.abhi.example1-network.com:7051

#######  •	Creating the Channel #####

peer channel create -o orderer.example1-network.com:7050 -c example1channel -f ./channel-artifacts/channel.tx
echo "channel created !!!!!!"
######•	Peer0 Joining
peer channel join -b example1channel.block
echo "peer joined the channel"

# -------•	Anchor Peer Updates .--------------------------------------------------------


# To update the anchor peers, you need to update the environment variable again to point
# it to the peer that you want to make the anchor peer.

# abhi

CORE_PEER_LOCALMSPID="abhiMSP"

CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/abhi.example1-network.com/users/Admin@abhi.example1-network.com/msp

CORE_PEER_ADDRESS=peer0.abhi.example1-network.com:7051

# the following command, the peer 0 will be updated as the anchor peer for
# this organisation.

peer channel update -o orderer.example1-network.com:7050 -c example1channel -f ./channel-artifacts/abhiMSPanchors.tx

echo "Anchor peer updated !!!!!!"


