# Repository Guidelines

This document describes the scope and lifecycle of repositories within [Cilium](https://github.com/cilium).

You can find the list of all repositories, sorted by their scope, in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

**Table of Contents**

* [Scope](#scope)
  * [```Sub-project```](#sub-project)
  * [```Ecosystem```](#ecosystem)
  * [```Historical```](#historical)
* [Lifecycle](#lifecycle)
  * [Addition](#addition)
  * [Change of scope](#change-of-scope)
  * [Approval process](#approval-process)
* [Credit](#credit)

## Scope

Each repository within the Cilium GitHub organization is assigned one of three scopes: [```Sub-project```](#Sub-project), [```Ecosystem```](#ecosystem), or [```Historical```](#historical). This assigned scope helps to convey each repository's purpose and responsibility in the overall functioning of the project.

### ```Sub-project```

Sub-project repositories are at the heart of the Cilium project, and represent its most essential functioning. They are the most active in terms of both contributions and use cases, and represent the repositories that adopters will typically interact with most often.

Notable repositories of this type include [Cilium](https://github.com/cilium/cilium), [eBPF-go](https://github.com/cilium/ebpf), [Hubble](https://github.com/cilium/hubble), and [Tetragon](https://github.com/cilium/tetragon).

You can find the list of all ```Sub-project``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#sub-project-scope).

### ```Ecosystem```

Ecosystem repositories are the most numerous, as this scope is intentionally broad. They include (but are not limited to) the following types of repositories:

- Optional extensions of the sub-projects, including useful Go libraries like [Fake](https://github.com/cilium/fake), or repositories designed to integrate Cilium with other projects like [Proxy](https://github.com/cilium/proxy)
- Infrastructure repositories required to keep the Cilium project running smoothly, including development and testing tools like [little-vm-helper](https://github.com/cilium/little-vm-helper), or those helping with the overall contribution process like [github-actions](https://github.com/cilium/github-actions)
- Other special repositories such as the [Community](https://github.com/cilium/community) and [.github](https://github.com/cilium/.github) repository, template repositories like [design-cfps](https://github.com/cilium/design-cfps), as well as all forks

These repositories have varying levels of maturity and activity level. Discretion is advised for adoptors seeking to use any end user facing repositories in this scope.

You can find the list of all ```Ecosystem``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#ecosystem-scope).

### ```Historical```

Historical repositories are considered deprecated, are no longer maintained, and are converted to an archived, read-only state. They are not recommended for use by adoptors.

Repositories that have been inactive for quite some time may be good candidates for archival. They can be proposed through the same process as other [changes of scope](#change-of-scope).

You can find the list of all ```Historical``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#historical-scope).

## Lifecycle

### Addition

Additional repositories can be proposed by using the [New Repository Template](https://github.com/cilium/community/issues/new?assignees=&labels=&projects=&template=new-repository.yaml) and can be approved via the process as described in [Approval process](#approval-process). This includes the creation of new repositories, adding donated repositories, or creating forks from existing repositories.

In order for a new repository to be approved, it must also meet the following criteria:

- Approved by at least two committers
- README describes the intent of the repository and has usage examples
- Adheres to Apache 2.0 or one of the other [approved licenses](https://github.com/cncf/foundation/blob/main/policies-guidance/allowed-third-party-license-policy.md)

Any new repository must be added into the appropriate list in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

### Change of scope

If a repository's level of activity significantly changes and/or it modifies its purpose over time, it may become appropriate to pursue a change in scope. This change can be proposed by using the [Change of Scope Template](https://github.com/cilium/community/issues/new?assignees=&labels=&projects=&template=change-of-scope.yaml) and can be approved via the process as described in [Approval process](#approval-process).

Any approved change of scope must be reflected in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

### Approval process

All changes that occur within the lifecycle of a repository have the same approval process:

- An issue is opened via the appropriate issue template ([New Repository Template](https://github.com/cilium/community/issues/new?assignees=&labels=&projects=&template=new-repository.yaml) or [Change of Scope Template](https://github.com/cilium/community/issues/new?assignees=&labels=&projects=&template=change-of-scope.yaml))
- Once the issue is opened, ample opportunity for discussion among both committers and the larger Cilium community is provided (for example, 1 week)
- If the discussion suggests an alternate path should be pursued, then that discussion should be resolved prior to approvals
- If there are no objections among committers and any relevant criteria are met (for example, the criteria found in [Addition](#addition)), the change is approved

In the rare case that objections from committers cannot be worked through independently, the committers decide if the change should be approved via a simple majority vote as set out in [GOVERNANCE.md](https://github.com/cilium/community/blob/main/GOVERNANCE.md#voting).

## Credit

Thank you to [Falco Security](https://github.com/falcosecurity/evolution/blob/main/REPOSITORIES.md) for inspiring this document.
