#!/usr/bin/env bash
#This command will trigger scale up policy

echo "Executing scale up policy"
aws autoscaling execute-policy --auto-scaling-group-name "test-application-AutoScalingGroup-CBLTI2S6AYOH" --policy-name "test-application-scaleUpPolicy-1DNDLJZ0EGBTR" --no-honor-cooldown
