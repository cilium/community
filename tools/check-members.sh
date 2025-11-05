#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

status=0

function update_team_list() {
    path="$1"
    team="$(basename -s ".yaml" "$1")"

    yq '.members' <"$path" > "$path.members"
    for user in $(yq '.mentors[]' <"$path"); do
        if [ "$user" == "null" ]; then
            continue
        fi
        if ! grep -q "$user" "$path.members"; then
            >&2 echo "User $user is in $team.mentors, but not $team.members."
            status=1
        fi
        echo "- $user"
    done > "$path.mentors"

    {
        echo "members:"
        LANG=C sort -u "$path.members" "$path.mentors"
        if [ "$(yq '.mentors | length > 0' <"$path")" == "true" ]; then
            echo "mentors:"
            LANG=C sort -u "$path.mentors"
        fi
    } > "$path.new"

    rm "$path.members"
    rm "$path.mentors"
    mv "$path.new" "$path"
}

function main() {
    for path in ladder/teams/*.yaml; do
        update_team_list "$path"
    done
    exit $status
}

main "$@"
