#! /bin/sh
BASEDIR=`cd $(dirname $0) && pwd`
aws cloudformation set-stack-policy \
    --profile shoutak \
    --region ap-northeast-1 \
    --stack-name stack-policy-test \
    --stack-policy-body "file://$BASEDIR/policy_v2.json"
