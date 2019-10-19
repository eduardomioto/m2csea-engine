#!/bin/bash -eu
#
# @description    Get containers info and stats using the Docker Remote API
# @deps           jq, curl or nc
# @usage          docker-stats.sh host-42 101.0.0.42
#

if [ -S /var/run/docker.sock ]; then
  API=api_socket
else
  API=api_http
fi

case $API in
  api_http)
    DOCKER_HOSTNAME=${1:-$(ls -1 /ops/machine/machines | head -1)} ;;
esac

api_http() {
  declare endpoint=$1 options=${2:-""}

  DOCKER_IP=$(docker-machine ip $DOCKER_HOSTNAME 2> /dev/null)
  DOCKER_PORT=2376
  CERT_DIR=$MACHINE_STORAGE_PATH/machines/$DOCKER_HOSTNAME

  curl -sk $options \
    --cert $CERT_DIR/cert.pem --key $CERT_DIR/key.pem --cacert $CERT_DIR/ca.pem \
    https://$DOCKER_IP:$DOCKER_PORT$endpoint
}

api_socket() {
  declare endpoint=$1 options=${2:-""}
  echo -ne "GET $endpoint HTTP/1.1\r\n\r\n" \
    | nc -U $options /var/run/docker.sock \
    | grep '^[{|\[]'
}

stats() {
  (
    while read container; do
      local container_id=$(jq -r .Id <<< $container)
      echo '{
        "container": '$container',
        "stats": '$($API "/containers/$container_id/stats?stream=false" "-q 2")'
      }' &
    done < <($API /containers/json | jq -c '.[]' | sed "s|/||")
    wait
  ) \
  | jq '{
      name:.container.Names[0],
      image:.container.Image,
      mem_usage:.stats.memory_stats.usage,
      mem_limit:.stats.memory_stats.limit,
      cpu_usage:.stats.precpu_stats.cpu_usage.total_usage,
      cpu_usage:.stats.precpu_stats.system_cpu_usage,
      rx_bytes:.stats.networks.eth0.rx_bytes,
      tx_bytes:.stats.networks.eth0.tx_bytes
    }' \
  | jq -s .
}

stats
