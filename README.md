# Onica test
This repo conists of devops test for Onica
It creates basic infrastructure for a webserver. 

onica_test.yaml will create the following resources
VPC, public subnets, private subnets, NAT gateway, Internet gateway, ELB, EC2 instances, Security groups, Autoscaling group, launch configuration.

deploy.sh can be used to create/update cloudformation stack via aws-cli.

scaleup.sh can be used to execute scaleUpPolicy via aws-cli

scaledown.sh can be used to execute scaleDownPolicy via aws-cli