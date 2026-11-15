#!/bin/sh
envsubst < /etc/xray/config.template.json > /etc/xray/config.json
exec xray run -config /etc/xray/config.json
