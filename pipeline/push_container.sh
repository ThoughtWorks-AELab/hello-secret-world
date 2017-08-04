#!/bin/sh

set -e

export VAULT_ADDR=http://$VAULT_SERVICE_HOST:$VAULT_SERVICE_PORT

vault_response=`vault write -format=json auth/approle/login role_id=$VAULT_ROLE_ID secret_id=$VAULT_SECRET_ID`
token=`echo $vault_response|jq -r '.auth .client_token'`

creds=`VAULT_TOKEN=$token vault read secret/app/pipeline/hello-secret-world-pipeline/registry`
username=`echo $creds | jq -r '.data .username'
password=`echo $creds | jq -r '.data .password'

docker login -u $username -p $password
docker push danielsomerfield/hello-secret-world:${GO_PIPELINE_LABEL}
