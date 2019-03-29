#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o noclobber

apk add bash py-pip 
apk add --virtual=build gcc libffi-dev musl-dev openssl-dev python-dev make 
pip --no-cache-dir install -U pip 
pip --no-cache-dir install azure-cli 
apk del --purge build

