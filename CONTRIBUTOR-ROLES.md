# Contributor Roles

### Triage Team
Triagers are members that help triage issues. They can set assignments and labels.

* Responsibilities:
    * Assigning and labeling issues 

* Qualifications: 
    * Must be a Cilium Organization member

* Privileges:
    * GitHub Triage role

The process of becoming a Triage Team member is:

1. Make a PR against the [triage team file](roles/Triage-Team.md)
2. At least two members who are already Committers, approve the PR

### Security Team
Security Team members are listed in the [security team file](roles/Security-Team.md). The security team is responsible for responding to all security issues reported to security@cilium.io or any other community forum. They ensure that the issues are mitigated and a responsible disclosure process is followed in a reasonable time.

* Responsibilities:
    * Thoroughly investigate all reports to the Security Team
    * Does not share any vulnerability information with others unless necessary to fix the issue
    * Notify the reporter as the security issue moves through the identification and resolution process
    * Uphold the Security embargo policy

* Qualifications:
    * Has a solid grasp of the overall architecture of Cilium, its usage in production environments, and its threat model
    * Established the trust of Cilium committers that they will uphold the security posture of Cilium

* Privileges:
    * Access to security reports
    * Membership of #security-team channel in Cilium Slack 
    * Membership of the security team mailing list 

The process of becoming a security team member is:

1. Nominated by a community member and seconded by a committer
2. Shadowing an existing security team member

### Community Team
Community Team members are listed in the [community team file](roles/Community-Team.md). The community team is responsible for helping grow the community around Cilium including managing the public presence of the project, helping the project be present at events and meetups, and applying to relevant programs on the project’s behalf.

* Responsibilities:
    * Keeping the Cilium website and social media accounts up to date, following
      the [social guidelines](./Social-Guidelines.md)
    * Helping manage the Cilium presence at relevant events and meetups
    * Applying to programs and grants that will help grow the Cilium community
    * Representing the Cilium project positively in public
    * Coordinating people, projects, and activities across the community team

* Qualifications:
    * Organization Member
    * Sustained contributions to growing the Cilium community through content, promotion, or other ideas
    * Proven ability to write effective content 

* Privileges:
    * Access to Cilium social media accounts and mailing lists

The process of becoming a Community Team member is:

1. Make a PR against the [community team file](roles/Community-Team.md)
2. Approval by one committer

### CI Team
The CI team works to keep the CI infrastructure up and running.

* Responsibilities:
    * Keeping CI infrastructure healthy
    * Investigating CI infrastructure problems
    * Provide visibility into CI spend and status

* Qualifications:
    * Must be a Cilium Org member
    * A basic understanding of how the CI system works

* Privileges:
    * Access rights to configuring CI infrastructure

The process of becoming a CI Team member is:

1. Make a PR against the [CI Team file](roles/CI-Team.md)
2. Approval by one committer

### Code Team
The Code Team is the committers responsible for all aspects of the Cilium organization codebase. All committers contributing code are automatically a part of this team.

* Responsibilities:
    * Is an active owner of code they have contributed (unless ownership is explicitly transferred) making sure that code is well tested, tests consistently pass, and addressing bugs or issues discovered after code is accepted
    * Everything in expectations of developers with [commit access](https://github.com/cilium/community/blob/main/GOVERNANCE.md#granting-commit-access)
    * Nominate themselves to review specific code owner areas
    * Backport fixes for latest release
    * Writing and/or refactoring PRs
    * Can drive the release process
    * Help contributors get PRs into a `ready-to-merge` state
    * Approve CFPs

* Qualifications:
    * Cilium Committer

### Maintainers
[Maintainers](roles/Maintainers.md) are very established contributors who are responsible for the entire project. They have the same rights as Committers, but have additional administrative and janitorial responsibilities.

A Maintainer must meet the responsibilities and qualifications of a Committer, plus:

* Responsibilities:
    * Driving the release process
    * Merging PRs into the main tree
    * Define release timeline
    * Other duties as needed by the project

* Qualifications
    * Demonstrates a broad knowledge of the project across multiple areas
    * Must be a Cilium committer

* Privileges:
    * Access and the ability to modify secrets used to publish project images
    * Define branch protections for stable branches

The process of becoming a Maintainer is:

Talk to the current maintainers about which part of the project you would like to help with.
