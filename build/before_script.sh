#!/bin/bash

# store current path for later
OLDPATH=$(pwd) 

#require CONFIG_BRANCH
if [ "x$CONFIG_BRANCH" == "x" ] ; then
    echo "CONFIG_BRANCH not defined"
    exit 1
fi

# using the given config branch
echo "config branch: $CONFIG_BRANCH"

cd config
git checkout $CONFIG_BRANCH

# restore initial path before finish
cd ${OLDPATH}
