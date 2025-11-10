#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

LANG=C

function main() {
    echo "* @cilium/committers" > CODEOWNERS.new
    for f in ladder/teams/*.yaml; do
        team="$(basename --suffix '.yaml' "$f")"
        if ! grep "teams/$team.yaml" CODEOWNERS; then
        echo "/$f @cilium/$team";
        fi
    done >> CODEOWNERS.new
    mv CODEOWNERS.new CODEOWNERS
}

main "$@"
