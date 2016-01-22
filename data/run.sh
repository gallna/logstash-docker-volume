#!/bin/bash

prefix=${S3_PREFIX:=$1}
bucket=${S3_BUCKET:=$2}

/bin/sed \
    -e "s|AWS_KEY|$AWS_KEY|" \
    -e "s|AWS_SECRET|$AWS_SECRET|" \
    -e "s|S3_BUCKET|$bucket|" \
    -e "s|S3_PREFIX|$prefix|" \
    -e "s|ES_HOST|${ES_HOST:=elasticsearch}|" \
    -e "s|ES_PORT|${ES_PORT:=9200}|" \
    -e "s|S3_DELETE|${S3_DELETE:=false}|" \
    -e "s|S3_TEMPORARY_DIRECTORY|${S3_TEMPORARY_DIRECTORY:=/tmp/$S3_PREFIX}|" \
    logstash.conf > build.conf

cat build.conf
