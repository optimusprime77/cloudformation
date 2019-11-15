# Cloudformation Templates for Fargate App Deployment 

### Requirements

Bash

### How to run the templates.
        
        ./cfn-deploy.sh                     # Run cloudformation deployment script.
        
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
