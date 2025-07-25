#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

REVIEWERS="ladder/reviewers.yaml"

function main() {
    echo "reviewers:" > $REVIEWERS
    for f in ladder/teams/*.yaml; do
        yq '.members' "$f";
    done >> $REVIEWERS.new
    LANG=C sort -u $REVIEWERS.new >> $REVIEWERS
    rm $REVIEWERS.new
}

main "$@"
