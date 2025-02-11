#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

##
# This script is used to lint team membership
# file based on a directory of yaml files of the 
# form team-name.yaml
# This tool is used as part of team-management automation
##

set -eu
set -o pipefail

# $1 - teams directory
# $2 - org name
if [ $# -ne 2 ]; then
  echo "Usage: $0 <TEAMS_DIRECTORY> <GITHUB_ORG>"
  echo "Organization read token in envvar GITHUB_TOKEN"
  exit 1
fi

>&2 echo "> Linting $2 teams from $1/*.yaml"
CDIR=`pwd`
cd "$1"

# Use GitHub API with paging to recover Org member login list
url="https://api.github.com/orgs/$2/members"
page=1
flag=true
logins=()
while $flag; do
  response=$( curl -s -I -H "Authorization: Bearer $GITHUB_TOKEN" "${url}?page=${page}" )
  # Append to logins array
  logins+=( `curl --no-progress-meter -L \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $GITHUB_TOKEN" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    ${url}?page=${page} | jq -r '.[].login'` )

  # Check to see if there is a next page to grab
  set +o pipefail
  next_page=$(echo "$response" | grep -s 'rel="next"' | sed 's/.*<//' | sed 's/>.*//')
  set -o pipefail

  if [[ -z "$next_page" ]]; then
    flag=false
  fi
  
  page=$((page + 1))
done

>&2 echo "Org Members:"
for login in "${logins[@]}"; do
  >&2 echo "$login"
done
>&2 echo ""

status=0
for file in *.yaml; do
     >&2 echo -e "\n>> Linting members/mentors from $file"
     f="${file%.*}"
     cd "$CDIR"; cd "$1"
     members=`yq -o t '.members' $file`
     for member in $members; do
       #>&2 echo "checking team member: $member"
       found=0
       for login in "${logins[@]}"; do
         if [ "$login" == "$member" ] ; then
           found=1
         fi
       done
       if [ $found -eq 0 ] ; then
         >&2 echo "Team $f Member: $member not found in Org: $2" 
         status=1
       fi
     done

     mentors=`yq -o t '.mentors' $file`
     for mentor in $mentors; do
       #>&2 echo "checking team mentor: $mentor"
       found=0
       for login in "${logins[@]}"; do
         if [ "$login" == "$mentor" ] ; then
           found=1
         fi
       done
       if [ $found -eq 0 ] ; then
         >&2 echo "Team $f Mentor: $mentor not found in Org: $2" 
         status=1
       fi
     done
done
if [ $status -eq 1 ] ; then
  >&2 echo -e "\n> At least one team member or mentor missing from org $2: exiting"
  exit 1 
fi


