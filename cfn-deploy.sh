#!/usr/bin/sh

# Ensure that you run aws configure before you run this step
# Package CloudFormation template as template needs to be transformed before deployment
aws cloudformation package \
    --template-file MainStack.yml \
    --s3-bucket cloudformation-package-208754856627 \
    --output-template-file mainstack-packaged.yml

# Deploy Cloudformation templates
# Specify capabilities as the template contains IAM Resources
aws cloudformation create-stack \
    --stack-name crudapp-fargate \
    --template-body file://mainstack-packaged.yml \
    --parameters file://parameterfile-dev.json \
    --capabilities CAPABILITY_NAMED_IAM