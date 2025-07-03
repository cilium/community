#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

EMERITUS_PATH="ladder/emeritus_members.yaml"

function remove_user() {
    local user="$1"
    local file="$2"

    sed -i '/^- '"$user"'$/d' "$file"
}

function add_emeritus() {
    local user="$1"

    yq eval '.emeritus_members' "$EMERITUS_PATH" > "$EMERITUS_PATH.new"
    echo "- $user" >> "$EMERITUS_PATH.new"
    echo 'emeritus_members:' > "$EMERITUS_PATH"
    sort "$EMERITUS_PATH.new" >> "$EMERITUS_PATH"
    rm "$EMERITUS_PATH.new"
}

function check_args() {
    if [ $# -ne 1 ]; then
        >&2 echo "usage: $0 GH-USER"
        >&2 echo ""
        >&2 echo "Remove GH-USER from teams and add them to the Emeritus team"
        exit 1
    fi

    if ! git grep -q "$1"; then
        >&2 echo "User '$1' not found in repository"
        exit 1
    fi
}

function main() {
    check_args "$@"

    local user="$1"
    for f in $(git grep -l "$user"); do
        remove_user "$user" "$f"
    done
    add_emeritus "$user"
}

main "$@"
