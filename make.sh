#!/bin/bash
mkdir function infra nonprod prod
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PIPELINE=$(<$DIR/PIPELINE)
STARTER=$(<$DIR/STARTER)
CONSTRUCTOR=$(<$DIR/CONSTRUCTOR)
echo "$PIPELINE">Jenkinsfile
echo "$STARTER">infra/main.tf
echo "$CONSTRUCTOR">nonprod/main.tf
echo "$CONSTRUCTOR">prod/main.tf
