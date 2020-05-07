#!/bin/bash

set -m

./tmp/scripts/check_admin_password.sh &

./${SONATYPE_DIR}/start-nexus-repository-manager.sh

exec "$@"
