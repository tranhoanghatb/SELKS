#!/bin/sh
# Add your commands here
echo "Starting Filebeat setup..."
# Any setup or initialization commands
# For example:
filebeat modules enable netflow
# Start Filebeat
#filebeat -e -c /usr/share/filebeat/filebeat.yml
filebeat setup --index-management -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["elasticsearch:9200"]'
