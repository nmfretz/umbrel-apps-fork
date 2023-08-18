export DEVICE_IP=$(ip -4 addr show docker0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
echo "DEVICE_IP=$DEVICE_IP"