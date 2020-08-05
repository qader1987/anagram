#!/usr/bin/env bash
#This command will trigger scale down policy

echo "Executing scale down policy"
aws autoscaling execute-policy --auto-scaling-group-name "anagram-test-AutoScalingGroup-UHJCKK3PYKYS" --policy-name "anagram-test-scaleDownPolicy-1XXPB37COVMRA" --no-honor-cooldown
