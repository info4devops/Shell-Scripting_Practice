#!/bin/bash

# To list out the users present in a particular GitHub Repository (File name: list_users.sh)

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME="$1"
TOKEN="$2"

# User and Repository information
REPO_OWNER="$3"
REPO_NAME="$4"

# Function to make a GET request to the GitHub API
function github_api_get {
  local endpoint="$1"
  local url="${API_URL}/${endpoint}"

  # Send a get request to GitHub API with authentication
  curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
  local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

  # Fetch the list of collaborators on the repo
  collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

  # Display the list of collaborators with read access
  if [[ -z "$collaborators" ]]; then
     echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
  else
     echo "Users with read access found for ${REPO_OWNER}/${REPO_NAME}:"
     echo "$collaborators"
  fi 
}

# Main Script
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}."
list_users_with_read_access
