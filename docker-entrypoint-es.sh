#!/bin/sh

exec echo y | /usr/share/elasticsearch/bin/elasticsearch-keystore add-file gcs.client.nysc.credentials_file /usr/share/elasticsearch/gcs.client.nysc.credentials_file.json

exec /usr/local/bin/docker-entrypoint.sh eswrapper