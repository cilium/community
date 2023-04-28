# Copyright Authors of Cilium
# SPDX-License-Identifier: Apache-2.0

.PHONY:
members:
	./tools/list-members cilium team > ladder/members.yaml
