#! /bin/bash

# To list out the users present in particulr GitHub Repository (File name: list_users.sh )

# Github API URL
API_URL="https://api.github.com"

#Github username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER= $1
REPO_NAME= $2

# Function to make a GET request to the GitHub API
funtion github_api_get {
  local endpoint = "$1"
  local url= "${API_URL} / ${endpoint}"

  # Send a get request to github API with authentication

  curl -s -u "${USERNAME}:${TOKEN}" "$url"
  
}

# function to list users with read access to the repository
function list_users_with_read_access {
  local endpoint= "repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

  #fetch the list of collaborators on the repo
  collaborators= "$(github.api_get"$endpoint"| jq -r '.[] | select (.permission.pull==true) | .login')"

  # Display the list of collaborators with read access
  if [[ -z "$collaborators"]]
  then
     echo "No user with read access found for ${REPO_OWNER}/${REPO_NAME}."
  else
     echo "Users with read access found for ${REPO_OWNER}/${REPO_NAME}."
     echo "$collaborators"
  fi 
}

# Main Script
echo "Listing Users with read access to ${REPO_OWNER}/${REPO_NAME}."
list_users_with_read_access