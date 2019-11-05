#!/usr/bin/sh

# Ensure that you run aws configure before you run this step
# Package CloudFormation template as template needs to be transformed before deployment
aws cloudformation package \
    --template-file MainStack.yml \
    --s3-bucket cloudformation-package-208754856627 \
    --output-template-file mainstack-packaged.yml

# Deploy Cloudformation templates
aws cloudformation deploy \
    --stack-name crudapp-fargate \
    --template-file mainstack-packaged.yml \
