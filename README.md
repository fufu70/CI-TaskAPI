# CI-TaskAPI

A basic installation and update script for servers that want to have the TaskAPI or have the TaskAPI already installed. To start deploying TaskAPI servers first create a running instance that is accessible by password and username.

### How to use install-on-server? ###

Simply run this command:
```shell
>$ bash install-on-server.sh -u=$MY_USERNAME -h=$MY_HOST
```

You will be prompted for a password. 
Once proper credentials are passed it will start to setup the SC server as necessary.
The Current OS for the TaskAPI is Ubuntu 16.04x64

### How to use push-to-server? ###

Simply run this command:
```shell
>$ bash push-to-server.sh -u=$MY_USERNAME -h=$MY_HOST
```

You will be prompted for a password. 
If the credentials are accepted then it will update the server to the latest master code.