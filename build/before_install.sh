#!/bin/bash

#In a before_install step, you can install additional dependencies required by your project such as Ubuntu packages or custom services.

# set up python and it's package manager
#sudo apt-get update 
#sudo apt-get install -y python3 python3-pip


pip install -U pytest
  # install nodejs and it's package manager
  #apt-get install -y gnupg
  #curl -sL https://deb.nodesource.com/setup_6.x | bash -
  #apt-get install -y nodejs
  #
  # install apache and it's modules
  # apt-get install -y apache2
  # apache2ctl configtest
  ##apt-get install -y libapache2-mod-php5
  #/etc/init.d/apache2 restart
