#!/bin/bash

# setup ssh information.
. "helpers/get-ssh-info.sh"


COMMANDS[0]="echo '${SSH_PASSWORD}' | sudo -S apt-get -y --force-yes install git"
COMMANDS[1]="git clone https://github.com/fufu70/TaskAPI.git"
COMMANDS[2]="sudo mkdir /var/www"
COMMANDS[3]="sudo mkdir /var/www/task_api"
COMMANDS[4]="sudo mv TaskAPI/src /var/www/task_api/src"
COMMANDS[5]="mv TaskAPI/vagrant install"
COMMANDS[6]="mv TaskAPI/sql sql"
# Configure Installtion process
COMMANDS[7]="sed -i 's/\/home\/vagrant/\/root/g' install/install.sh"

# Run Installation
COMMANDS[14]="bash install/install.sh"
COMMANDS[15]="sudo mkdir /var/www/task_api/src/errors"
COMMANDS[16]="sudo chown www-data:www-data -R /var/www/task_api/src"

n_elements=${#COMMANDS[@]}

for ((i = 0; i < $n_elements; i ++)); do
    sshpass -p $SSH_PASSWORD ssh $SSH_URL ${COMMANDS[i]}
done

# unset ssh information
. "helpers/unset-ssh-info.sh"