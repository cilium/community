#!/usr/bin/env bash
# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

set -eu

LANG=C

function main() {
    echo "* @cilium/committers" > CODEOWNERS
    for f in ladder/teams/*.yaml; do
        echo "/$f @cilium/$(basename $f | sed 's/.yaml//')";
    done >> CODEOWNERS
}

main "$@"
