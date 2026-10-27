#!/bin/sh
set -e

# Substitute only ${HF_TOKEN} into default.conf.template
envsubst '${HF_TOKEN}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

exec nginx -g "daemon off;"
