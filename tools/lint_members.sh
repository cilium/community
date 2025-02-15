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
check_org_members=true
while $flag; do
  status=$(curl --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null -H "Authorization: Bearer $GITHUB_TOKEN" ${url}?page=${page})
  if [[ "$status" -gt 399 ]] ; then
    echo "GitHub API Org Membership Retrieval Failure with Status Code: $status"
    flag=false
    check_org_members=false
  fi
  if $flag; then
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
  fi
done
if $check_org_members; then
  >&2 echo "Org Members:"
  for login in "${logins[@]}"; do
    >&2 echo "$login"
  done
fi
>&2 echo ""

status=0
for file in *.yaml; do
     >&2 echo -e "\n>> Linting members from $file"
     f="${file%.*}"
     cd "$CDIR"; cd "$1"
     set +e 
     members=$(yq -e -o t '.members' $file 2>/dev/null)
     ret=$?
     set -e
     if [ $ret -ne 0 ]; then
       continue
     fi
     for member in ${members[@]}; do
       if [ -n "$member" ]; then

         #>&2 echo "checking team member: $member"
         # Checking to see if team member login is cased correctly
         http_status=`curl --header "Authorization: Bearer $GITHUB_TOKEN" --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null --no-progress-meter "https://api.github.com/users/${member}"`
         if [[ "$http_status" -gt 399 ]] ; then
	   >&2 echo "Error: Member: ${member} :: GitHub API Status Code: $http_status"
           status=1
         else
           login=`curl --header "Authorization: Bearer $GITHUB_TOKEN" --no-progress-meter "https://api.github.com/users/${member}" | jq -r .login`
           if [ "$login" == "$member" ] ; then
             found=1
           else
             >&2 echo "Team $f Member: $member case mistatch should be : $login" 
             status=1
           fi
         fi

         # Checking to see if team member login is in org membership
         if $check_org_members; then
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
         fi
       fi  
     done
     >&2 echo -e "\n>> Linting mentors from $file"

     set +e
     mentors=$(yq -e -o t '.mentors' $file 2>/dev/null)
     ret=$?
     set -e
     if [ $ret -ne 0 ]; then
       continue
     fi
     for mentor in ${mentors[@]}; do
       if [ -n "$mentor" ]; then
         >&2 echo "checking team mentor: $mentor"
         # Checking to see if team mentor login is cased correctly
         http_status=`curl --header "Authorization: Bearer $GITHUB_TOKEN" --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null --no-progress-meter "https://api.github.com/users/${mentor}"`
         if [[ "$http_status" -gt 399 ]] ; then
	   >&2 echo "Error: Mentor: ${mentor} :: GitHub API Status Code: $http_status"
           status=1
         else
           login=`curl --header "Authorization: Bearer $GITHUB_TOKEN" --no-progress-meter "https://api.github.com/users/${mentor}" | jq -r .login`
           if [ "$login" == "$mentor" ] ; then
             found=1
           else
             >&2 echo "Team $f Mentor: $mentor case mistatch should be : $login" 
             status=1
           fi
         fi

         # Checking to see if team mentor login is in org membership
         if $check_org_members; then
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
         fi
       fi
     done
done
if [ $status -eq 1 ] ; then
  >&2 echo -e "\n> At least one team member or mentor missing from org $2: exiting"
  exit 1 
fi


