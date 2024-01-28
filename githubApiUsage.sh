#!/bin/bash

#######################
#Author: Onkar
#Date: 28th Jan
#Version: v1

######################

#Shell script practice make use of github apis to intract with repo via command line
#List the users
#list the commits

#API endpoint
API_URL="https://api.github.com"

#personal acess token and the username
USERNAME=$username
TOKEN=$token

#User and Repository information
REPO_USER=$1
REPO_NAME=$2

function github_api_get {
	local endpoint=$1
	local url="${API_URL}/${endpoint}"

	curl -u "${USERNAME}:${TOKEN}" "$url"
}

#function to list all the commits of the users of that pertuclar repo
function list_commits {
	local endpoint="repos/{$REPO_USER}/{$REPO_NAME}/commits"
	result=$(github_api_get $endpoint)
	echo "$result"

}
list_commits


























