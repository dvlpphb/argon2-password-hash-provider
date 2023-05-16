#!/bin/bash

set -ex

KEYCLOAK_VERSION="21.1.1"

docker run -it --rm --name argon2-password-hash-provider -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8.7 mvn clean package
echo "cp target/argon2-password-hash-provider-${KEYCLOAK_VERSION}.jar [your]/keycloak/deployments/"
#cp target/argon2-password-hash-provider-${KEYCLOAK_VERSION}.jar ../../../../dxp-services/keycloak/deployments/
