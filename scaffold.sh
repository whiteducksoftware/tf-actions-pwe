#!/bin/bash
env="prod"
scope="tf"
export spName="sp-actionsdemo-$env-$scope"
export sp=$(az ad sp create-for-rbac --name $spName --role="Owner" --scopes /subscriptions/d47fae4a-a9d1-44f7-a09e-23bb76696838 --years 99 -o tsv)
export spSecret=$(echo $sp | awk '{print $3}')
export spId=$(echo $sp | awk '{print $1}')
echo "Client secret: $spSecret"
echo "Client id: $spId"