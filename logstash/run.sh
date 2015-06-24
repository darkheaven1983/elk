#!/bin/sh

sed -i -e "s/9200/${ELASTICSEARCH_PORT_9200_TCP_PORT}/g" /etc/logstash/conf.d/logstash.conf
/opt/logstash/bin/logstash -f /etc/logstash/conf.d/logstash.conf
