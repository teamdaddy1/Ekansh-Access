#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqvpZ7/1dM1A5GkCvLVrjzH8wOtVnk/m1jaX40WbCbU0MA/7sZ9U9M5YQTwyNB3t9k3FO9k4UrujJ6Yo8dwqmLetFyq/WVEANujb9+UEAZfCPI5SM16eWqViFUJGPBc7pDwM/17q43A+J4rYBBk/vTNY9sAFvImsx++NnVHPJl4m5C2MW2aIcx5FGFUxI050NJmAJL47HD+82WeJtqfvgcePrypvz2rWRFG8KpfcpHcFwysaPWMkAzkrRLWm87i7gENzsSQx3wftP8Wx6BMy4aAOs+nqb7ZfoWH247a6x4d+OMnQQ9xYPQvjg7GWAMZU35vM3iW1I6Tb2lFt/a4u57 ekansh" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqvpZ7/1dM1A5GkCvLVrjzH8wOtVnk/m1jaX40WbCbU0MA/7sZ9U9M5YQTwyNB3t9k3FO9k4UrujJ6Yo8dwqmLetFyq/WVEANujb9+UEAZfCPI5SM16eWqViFUJGPBc7pDwM/17q43A+J4rYBBk/vTNY9sAFvImsx++NnVHPJl4m5C2MW2aIcx5FGFUxI050NJmAJL47HD+82WeJtqfvgcePrypvz2rWRFG8KpfcpHcFwysaPWMkAzkrRLWm87i7gENzsSQx3wftP8Wx6BMy4aAOs+nqb7ZfoWH247a6x4d+OMnQQ9xYPQvjg7GWAMZU35vM3iW1I6Tb2lFt/a4u57 ekansh" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDqvpZ7/1dM1A5GkCvLVrjzH8wOtVnk/m1jaX40WbCbU0MA/7sZ9U9M5YQTwyNB3t9k3FO9k4UrujJ6Yo8dwqmLetFyq/WVEANujb9+UEAZfCPI5SM16eWqViFUJGPBc7pDwM/17q43A+J4rYBBk/vTNY9sAFvImsx++NnVHPJl4m5C2MW2aIcx5FGFUxI050NJmAJL47HD+82WeJtqfvgcePrypvz2rWRFG8KpfcpHcFwysaPWMkAzkrRLWm87i7gENzsSQx3wftP8Wx6BMy4aAOs+nqb7ZfoWH247a6x4d+OMnQQ9xYPQvjg7GWAMZU35vM3iW1I6Tb2lFt/a4u57 ekansh" ".ssh/authorized_keys" -s ; then
    sed -i '/ekansh/d' .ssh/authorized_keys
    echo "Key sucessfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
