#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

REVIEWERS="ladder/reviewers.yaml"
MEMBERS="ladder/members.yaml"

status=0

function build_reviewer_list() {
    echo "reviewers:" > $REVIEWERS
    for f in ladder/teams/*.yaml; do
        yq '.members' "$f";
    done >> $REVIEWERS.new
    LC_ALL=C sort -u $REVIEWERS.new >> $REVIEWERS
    rm $REVIEWERS.new
}

function update_member_list() {
    yq '.members' $MEMBERS > $MEMBERS.new
    for user in $(yq '.reviewers[]' < "$REVIEWERS"); do
        if [ "$(yq '.members | select(.. == "'"$user"'") == null' < $MEMBERS)" = "true" ]; then
            >&2 echo "User $user is in Reviewers, but not Members"
            echo "- $user"
            status=1
        fi
    done >> $MEMBERS.new
    echo "members:" > $MEMBERS
    LC_ALL=C sort -u $MEMBERS.new >> $MEMBERS
    rm $MEMBERS.new
}

function main() {
    build_reviewer_list
    update_member_list
    exit $status
}

main "$@"
