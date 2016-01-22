#!/bin/bash

/bin/sed \
    -e "s|AWS_KEY|$AWS_KEY|" \
    -e "s|AWS_SECRET|$AWS_SECRET|" \
    -e "s|ES_HOST|$ES_HOST|" \
    -e "s|ES_PORT|$ES_PORT|" \
    -e "s|S3_BUCKET|$S3_BUCKET|" \
    -e "s|S3_PREFIX|$S3_PREFIX|" \
    /data/logstash.conf > /data/build.conf
