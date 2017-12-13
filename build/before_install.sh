#!/bin/bash

#In a before_install step, you can install additional dependencies required by your project such as Ubuntu packages or custom services.

echo "asking for chrome start"
google-chrome-stable --headless --disable-gpu --remote-debugging-port=9222 http://localhost &

whereis google-chrome-stable

# Install ChromeDriver (64bits; replace 64 with 32 for 32bits).
echo "install chromedriver..."
wget -N http://chromedriver.storage.googleapis.com/2.34/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/share/
sudo chmod +x /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver

echo "whereis chromedriver:"
whereis chromedriver

# set up python and it's package manager
#sudo apt-get update 
#sudo apt-get install -y python3  python3-pip

#python -V
#python3 -V
#pip3.5 -V
#pip -V
#pytest -V
pip install selenium -U


#pip3.5 install -U pytest
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
