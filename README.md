#Anagram test

This repo conists of devops test
It creates basic infrastructure for a webserver. 

infra.yaml -> will create the following resources
VPC, public subnets, private subnets, NAT gateway, Internet gateway, ELB, EC2 instances, Security groups, Autoscaling group, launch configuration.

deploy.sh -> can be used to create/update cloudformation stack via aws-cli, it includes all the required input parameters.

<!-- Testing Autoscaling:

Approach 1: 
This will be using 'stress' utility which has been installed via UserData on the instances,
run this command to spike the cpu utilization on any of the instance "stress --cpu 1 --timeout 300", this will trigger
the CloudWatch alarm which will trigger the scaling policy.

Approach 2:
Below scripts can be executed which will trigger the scaling policies
"scripts/scaleup.sh" -> can be used to execute scaleUpPolicy via aws-cli
"scripts/scaledown.sh" -> can be used to execute scaleDownPolicy via aws-cli -->

Improvements:
1. Continuous deployment - Jenkins or codepipeline
2. ECS cluster with fargate instead of EC2 instances
3. 
