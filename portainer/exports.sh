export DOCKER_HOST_IP=$(ip -4 addr show docker0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "DOCKER_HOST_IP=$DOCKER_HOST_IP"