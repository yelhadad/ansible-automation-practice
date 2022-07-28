#!/bin/bash
server=$1
user=$2
first_instance=$3
last_instance=$4
passowrd=$5

for instance in $(seq $first_instance $last_instance)
do
	sshpass -p ${passowrd} ssh-copy-id -o StrictHostKeyChecking=no ${user}@${server}${instance}
done

