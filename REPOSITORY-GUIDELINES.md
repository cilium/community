# Repository Guidelines

This document describes the scope and lifecycle of repositories within [Cilium](https://github.com/cilium).

You can find the list of all repositories, sorted by their scope, in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

**Table of Contents**

* [Scope](#scope)
  * [```Core```](#core)
  * [```Ecosystem```](#ecosystem)
  * [```Internal```](#internal)
  * [```Historical```](#historical)
* [Lifecycle](#lifecycle)
  * [Voting](#voting)
  * [Addition](#addition)
  * [Change of scope](#change-of-scope)
* [Credit](#credit)

## Scope

Each repository within the Cilium GitHub organization is assigned one of four scopes: [```Core```](#core), [```Ecosystem```](#ecosystem), [```Internal```](#internal), or [```Historical```](#historical). This assigned scope helps to convey each repository's purpose and responsibility in the overall functioning of the project.

### ```Core```

Core repositories are at the heart of the Cilium project, and represent its most essential functioning. They are the most active in terms of both contributions and use cases, and represent the repositories that adopters will typically interact with most often.

Notable repositories of this type include [Cilium](https://github.com/cilium/cilium), [eBPF-go](https://github.com/cilium/ebpf), [Hubble](https://github.com/cilium/hubble), and [Tetragon](https://github.com/cilium/tetragon).

You can find the list of all ```Core``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#core-scope).

### ```Ecosystem```

Ecosystem repositories are extensions of the core project, providing optional functionality that adopters may find useful. While not considered essential, they play a pivotal role of addressing a range of use cases and needs for Cilium adoptors.

Examples of repositories of this type include useful Go libraries like [Fake](https://github.com/cilium/fake), or repositories designed to integrate Cilium with other projects like [Proxy](https://github.com/cilium/proxy).

You can find the list of all ```Ecosystem``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#ecosystem-scope).

### ```Internal```

Internal repositories are those that are required to keep the Cilium project running smoothly, and are not designed to be used by adopters.

Examples of repositories of this type include development and testing tools like [little-vm-helper](https://github.com/cilium/little-vm-helper), or those helping with the overall contribution process like [github-actions](https://github.com/cilium/github-actions).

They also include the [Community](https://github.com/cilium/community) and [.github](https://github.com/cilium/.github) repository, template repositories like [design-cfps](https://github.com/cilium/design-cfps), as well as all forks.

You can find the list of all ```Internal``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#infra-scope).


### ```Historical```

Historical repositories are considered deprecated, are no longer maintained, and are converted to an archived, read-only state. They are not recommended for use by adoptors.

Repositories that have been inactive for quite some time may be good candidates for archival. They can be proposed through the same process as other [changes of scope](#change-of-scope).

You can find the list of all ```Historical``` repositories in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md#historical-scope).

## Lifecycle

### Voting

All changes that occur within the lifecycle of a repository have the same process:

- An issue is opened via the appropriate issue template ([New Repository Template]() or [Change of Scope Template]())
- Once the issue is opened, ample opportunity for discussion among both committers and the larger Cilium community is provided (for example, 1 week)
- If there are no objections among committers during this time and any relevant criteria are met (for example, the criteria found in [Addition](#addition)), the change is approved
- If there are any objections from committers, the committers decide if the change should be approved via a simple majority vote

### Addition

New repositories of any type can be proposed by using the [New Repository Template]() and can be approved via the process as described in [Voting](#voting).

In order for a new repository to be approved, it must also meet the following criteria:

- Approved by at least two committers
- The README should describe the intent of the repository and have usage examples
- Adheres to one of the [approved license policies](https://github.com/cncf/foundation/blob/main/allowed-third-party-license-policy.md)

Any new repository must be added into the appropriate list in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

### Change of scope

If a repository's level of activity significantly changes and/or it modifies its purpose over time, it may become appropriate to pursue a change in scope. This change can be proposed by using the [Change of Scope Template]() and can be approved via the process as described in [Voting](#voting).

Any approved change of scope must be reflected in [REPOSITORIES.md](https://github.com/cilium/community/blob/main/REPOSITORIES.md).

## Credit

Thank you to [Falco Security](https://github.com/falcosecurity/evolution/blob/main/REPOSITORIES.md) for inspiring this document.
