#!/usr/bin/env bash
if [ $# -ne 3 ]
then
	echo USAGE:removeRepo username repo token
fi
username=$1
repo=$2
token=$3

curl -X DELETE -H 'Authorization: token  "'$token'"  https://api.github.com/repos/$username/$repo