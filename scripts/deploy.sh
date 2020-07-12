#This script can be used to deploy the stack with 'onica_test.yaml'

aws cloudformation create-stack --stack-name test-application --template-body ../templates/onica_test.yaml \
    --region us-east-1  --profile ${profile} \
    --parameters  "ParameterKey=Env,ParameterValue=test"