#!/bin/bash
set -e

echo "---------------------------------------"
echo "⚙ Set AWS ECS Settings..."
# config aws account settings
aws ecs put-account-setting --name serviceLongArnFormat --value enabled && echo "✔ serviceLongArnFormat"
aws ecs put-account-setting --name taskLongArnFormat --value enabled && echo "✔ taskLongArnFormat"
aws ecs put-account-setting --name containerInstanceLongArnFormat --value enabled && echo "✔ containerInstanceLongArnFormat"
echo "✔ Success AWS ECS Settings!"
echo "---------------------------------------"