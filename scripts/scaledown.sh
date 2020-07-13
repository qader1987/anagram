#!/usr/bin/env bash
#This command will trigger scale down policy

echo "Executing scale down policy"
aws autoscaling execute-policy --auto-scaling-group-name "test-application-AutoScalingGroup-CBLTI2S6AYOH" --policy-name "test-application-scaleDownPolicy-1079VHSABRCWB" --no-honor-cooldown
