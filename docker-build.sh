#!/bin/bash

set -ex

docker run -it --rm --name argon2-password-hash-provider -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8.7 mvn clean package
echo "cp target/argon2-password-hash-provider-20.0.2.jar [your]/keycloak/deployments/"
#cp target/argon2-password-hash-provider-2.0.1.jar ../../../../dxp-services/keycloak/deployments/
