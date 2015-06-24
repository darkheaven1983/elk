#!/bin/sh

sed -i -e "s/ELASTICSEARCH_PORT_9200_TCP_ADDR/${ELASTICSEARCH_PORT_9200_TCP_ADDR}/g" /etc/logstash/conf.d/logstash.conf
sed -i -e "s/ELASTICSEARCH_PORT_9200_TCP_PORT/${ELASTICSEARCH_PORT_9200_TCP_PORT}/g" /etc/logstash/conf.d/logstash.conf
sed -i -e "s/ELASTICSEARCH_PORT_9200_TCP_ADDR/${ELASTICSEARCH_PORT_9200_TCP_ADDR}/g" /etc/logstash/elasticsearch.yml 

/opt/logstash/bin/logstash -f /etc/logstash/conf.d/logstash.conf
