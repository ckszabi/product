#!/bin/bash
set -ev

echo 'getting ready to deploy'
cp config config_ -r
cd config_
ls -al
