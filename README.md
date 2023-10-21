# multiorg



install fabric tools and docker images
bash ./install-fabric.sh d b

#First setup will be for ORG1 & ORG2

## Generate crypto-materials
bash generateCryptoMat.sh

## Generated ccp file for orgs
inside orgs directory
bash ccp/ccp-generate.sh
**but in ccp template orderer and channel section is missing as they are optional**