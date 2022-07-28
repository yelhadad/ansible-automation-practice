#!/bin/bash

server=$1
user=$2
password=$3

sshpass -p ${password} ssh-copy-id -o StrictHostKeyChecking=no ${user}@${server}
