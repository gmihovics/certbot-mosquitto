#!/bin/sh

set -e

certbot certonly --renew-by-default --server https://acme-v02.api.letsencrypt.org/directory --non-interactive --standalone --preferred-challenges http --rsa-key-size 4096 -m ${EMAIL} --no-eff-email --agree-tos -d ${DOMAIN}

exec "$@"
