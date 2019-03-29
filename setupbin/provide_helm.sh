#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
set -o noclobber

HELM_INSTALLER='get_helm.sh'

if [[ ! -r "./${HELM_INSTALLER}" ]]
then
	curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > "./${HELM_INSTALLER}"
fi

chmod 755 "${HELM_INSTALLER}"
bash "./${HELM_INSTALLER}"

