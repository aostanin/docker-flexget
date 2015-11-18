#! /bin/sh

set -e

[ ! -f /data/config.yml ] && cat > /data/config.yml <<EOF
tasks: {}
EOF

flexget daemon start
