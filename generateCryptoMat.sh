# shell script to generate crypto-materials

# set env path temporarily
export PATH="$PATH:${PWD}/bin"


#   if [ -d "organizations/peerOrganizations" ]; then
#     rm -Rf organizations/peerOrganizations && rm -Rf organizations/ordererOrganizations
#   fi

echo "Creating Org1 crypto materials"
echo "Creating Org2 crypto materials"

 set -x


# cryptogen --help
cryptogen generate --config=./orgs/org1/crypto-config.yaml --output="orgs/crypto-materials"
cryptogen generate --config=./orgs/org2/crypto-config.yaml --output="orgs/crypto-materials"
cryptogen generate --config=./orgs/orderer-org/crypto-config.yaml --output="orgs/crypto-materials"

 set +x
 
echo "Created Org1 crypto materials"
echo "Created Org2 crypto materials"

