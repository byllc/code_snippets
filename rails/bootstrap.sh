#!/bin/bash
#
#  A short script to bootstrap a vm to be ready to used with my common applications
#  I use it more for documentation purposes then for actual automation 


#first parameter is the application name which is also the system user
application=$1
home=/home/${application}

useradd $application -d $home 
chmod 755 $home

touch /home/${application}/ssh/authorized_keys
touch /home/${application}/ssh/config

chown $application /home/${application}/ssh/authorized_keys
chmod 700 .ssh
chmod 600 ./home/${application}/ssh/*

su - $application
curl -L get.rvm.io | bash -s stable

## incomplete...