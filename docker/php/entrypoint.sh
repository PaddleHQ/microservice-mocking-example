#!/bin/bash

# /tmp/ssl/ only exists when docker-compose.mocks.yml is used, so this won't run on dev/staging/production
if [ -d "/tmp/ssl/" ]; then
    cp /tmp/ssl/*  /usr/local/share/ca-certificates/
    cp /tmp/ssl/* /etc/ssl/private/
    update-ca-certificates
fi

exec "$@"
