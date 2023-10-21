

# export PATH="$PATH:${PWD}/bin"
export FABRIC_CFG_PATH=${PWD}/config
FABRIC_CFG_PATH=${PWD}/config
# export FABRIC_CFG_PATH=${PWD}/configtx

# Get docker sock path from environment variable
SOCK="${DOCKER_HOST:-/var/run/docker.sock}"
DOCKER_SOCK="${SOCK##unix://}"


echo $FABRIC_CFG_PATH
echo $DOCKER_SOCK

docker compose -f ./docker-compose_org1_2.yaml up 
