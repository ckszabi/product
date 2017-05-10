#!/bin/bash

echo "config branch: $config_branch"

cd config
git checkout $config_branch

# cd back to the root directory
cd ..
