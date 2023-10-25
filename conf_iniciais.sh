//Copie esse arquivo para test-network e execute
./network.sh up 
./network.sh createChannel  

./network.sh deployCC -ccn notifica-chaincode -ccp ../asset-transfer-basic/notifica-chaincode -ccl go
export PATH=${PWD}/../bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/

export FABRIC_RAIZ=${PWD}/..
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/org1.example.com/users/Admin@org1.example.com/msp
export CORE_PEER_ADDRESS=localhost:7051
