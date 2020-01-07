#!/usr/bin/dumb-init /bin/sh
set -ex

ulimit -c 0

dockerize \
  -template /vault/config/vault.hcl.tmpl:/vault/config/vault.hcl

exec "$@"
