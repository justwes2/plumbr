#!/bin/bash
mkdir function infra nonprod prod
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PIPELINE=$(<$DIR/PIPELINE)
TEMPLATE=$(<$DIR/TEMPLATE)
CONSTRUCTOR=$(<$DIR/CONSTRUCTOR)
STARTER=$(<$DIR/STARTER)
echo "$PIPELINE">Jenkinsfile
echo "$TEMPLATE">infra/main.tf
echo "$CONSTRUCTOR">nonprod/main.tf
echo "$CONSTRUCTOR">prod/main.tf
echo "$STARTER">function/lambda_function.py
