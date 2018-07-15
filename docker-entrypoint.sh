#!/bin/bash

set -xe

# If user don't provide any command
# Run filebeat
if [[ "$1" == "" ]]; then
     exec filebeat -c /etc/filebeat/filebeat.yml -e -d "*"
else
    # Else allow the user to run arbitrarily commands like bash
    exec "$@"
fi
