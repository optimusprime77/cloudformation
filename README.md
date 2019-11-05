# Cloudformation Templates for Fargate App Deployment 

### Requirements

1. Python 3

### How to run the templates.
        
        python3 -m pip install -U boto3             # Install boto3
        aws configure --profile cfn-deploy          # Please provide access credentials imteractively 
        python cfn-deploy.py -env sandbox           # cfn deployment script
        
### Template Structure

    .
    ├── parameterfile-${Environment}        # Stores Parameters for Cloudformation template
    └── mainstack                           # Main Template
        └── fargate.yml                     # Fargate Template (Consists of all resources necessary for Fargate App Deployment
            ├── TaskDefinition              # Task Definition
            ├── AssumeRolePolicy            # Policy Definition for task role
            ├── RootRole                    # Task Role Definition
            ├── LogGroup                    # CloudWatch Log Group to store logs.
            ├── FargateSecurityGroup        # Security Ingress and Egress
            └── FargateService              # Service Definition
