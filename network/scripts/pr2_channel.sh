configtxgen -profile OrdererGenesis -channelID ex-sys-channel -outputBlock ./channel-artifacts/genesis.block

sleep 1

configtxgen -profile Example1Channel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID example1channel
sleep 1
configtxgen -profile Example1Channel -outputAnchorPeersUpdate ./channel-artifacts/abhiMSPanchors.tx -channelID example1channel -asOrg abhiMSP
sleep 1
configtxgen -profile Example1Channel -outputAnchorPeersUpdate ./channel-artifacts/savaMSPanchors.tx -channelID example1channel -asOrg savaMSP

