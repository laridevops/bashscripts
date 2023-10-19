#!/bin/bash


# Download the Splunk Enterprise tar file
sudo rm -rf /opt/splunk*
cd /opt
sudo wget -O splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.0.4.1/linux/splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz"

# Extract the tar file to /opt
sudo tar -zxvf splunk-9.0.4.1-419ad9369127-Linux-x86_64.tgz -C /opt

cd /opt/splunk/bin/
# Start Splunk Enterprise and set up the admin user and password
sudo ./splunk start --accept-license --answer-yes --no-prompt --seed-passwd "abcd1234"

#enable splunk at the startup
sudo ./splunk enable boot-start
# open splunk on the browser, thru port 8000 and login to check if everything works
# username= admin  and password = abcd1234 ( this can be change in the script.)
echo "please go on the browser, access splunk on port 8000 , username: admin password: abcd1234 "
sleep 4
