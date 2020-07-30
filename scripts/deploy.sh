#This script can be used to create/update the stack with 'onica_test.yaml'

echo "Deploying CloudFormation stack"
aws cloudformation deploy --stack-name test-application --template-file ../templates/infra.yaml \
    --region us-east-1 --parameter-overrides  "ParameterKey=Env,ParameterValue=test"