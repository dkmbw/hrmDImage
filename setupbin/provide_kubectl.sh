#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o noclobber

KUBECTL_DEST='/usr/bin/kubectl'
URL='https://storage.googleapis.com/kubernetes-release/release'
RELEASE="$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)"
KUBECTL_PATH='bin/linux/amd64/kubectl'

curl -L -o "${KUBECTL_DEST}"  "${URL}/${RELEASE}/${KUBECTL_PATH}"
chmod +x /usr/bin/kubectl

