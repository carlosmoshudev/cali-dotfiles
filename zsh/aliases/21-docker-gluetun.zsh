# Gluetun port helper.

unalias ffport 2>/dev/null

ffport() {
  docker exec -it gluetun sh -lc 'cat /tmp/gluetun/forwarded_port'
}
