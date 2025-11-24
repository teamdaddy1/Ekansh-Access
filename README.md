# Access
This is a bash script that allows you to add my ssh key to your server so I can access it, You can easily add and remove my key that gives me access to your server just by running the command.

## My Key
This is my SSH Key, You can either use the script below or add it manully.
```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqvpZ7/1dM1A5GkCvLVrjzH8wOtVnk/m1jaX40WbCbU0MA/7sZ9U9M5YQTwyNB3t9k3FO9k4UrujJ6Yo8dwqmLetFyq/WVEANujb9+UEAZfCPI5SM16eWqViFUJGPBc7pDwM/17q43A+J4rYBBk/vTNY9sAFvImsx++NnVHPJl4m5C2MW2aIcx5FGFUxI050NJmAJL47HD+82WeJtqfvgcePrypvz2rWRFG8KpfcpHcFwysaPWMkAzkrRLWm87i7gENzsSQx3wftP8Wx6BMy4aAOs+nqb7ZfoWH247a6x4d+OMnQQ9xYPQvjg7GWAMZU35vM3iW1I6Tb2lFt/a4u57 ekansh
```

## Running the Script

```bash
 bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Ekansh-Access/master/ssh.sh)
```

## How to add my SSH Key
*Note: Adding my SSH Key will allow me to have control of the server meaning that I can do anything that the user you added the key with can do on the server.*

1. Login to the root user or a user with sudo privallages of your server
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Ekansh-Access/master/ssh.sh)`
1. Select the first option to add my key
1. Give me the server IP and the username.

## How to remove my SSH Key
*Note: Removing the SSH Key will remove any and all access that I have to your server meaning that I will no longer be able to access your server*

1. Login to the user you installed the SSH key with
1. Type the command ` bash <(curl -s https://raw.githubusercontent.com/teamdaddy1/Ekansh-Access/master/ssh.sh)`
1. Select the second option to remove my key.
