# Anagram 

This repo conists of devops test
It creates basic infrastructure for a webserver. It takes a string as input and lists out its anagrams.

infra.yaml -> will create the following resources
VPC, public subnets, private subnets, NAT gateway, Internet gateway, ELB, EC2 instances, Security groups, Autoscaling group, launch configuration.

deploy.sh -> can be used to create/update cloudformation stack via aws-cli, it includes all the required input parameters.


