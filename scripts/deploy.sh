#This script can be used to create/update the stack with 'infra.yaml'

echo "Deploying CloudFormation stack"
aws cloudformation deploy --stack-name anagram-test --template-file ../templates/infra.yaml \
    --region us-east-1 --parameter-overrides  Env=test KeyName=qader