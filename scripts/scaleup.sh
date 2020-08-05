#!/usr/bin/env bash
#This command will trigger scale up policy

echo "Executing scale up policy"
aws autoscaling execute-policy --auto-scaling-group-name "anagram-test-AutoScalingGroup-UHJCKK3PYKYS" --policy-name "anagram-test-scaleUpPolicy-1SNZFQQYIDFAN" --no-honor-cooldown
