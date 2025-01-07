# Contributor Ladder

* [Contributor Ladder](#contributor-ladder)
    * [Community Contributor](#community-contributor)
    * [Organization Member](#organization-member)
    * [Reviewer](#reviewer)
    * [Committer](#committer)
    * [Inactive Member](#inactive-member)
* [General guidance on making contributions and expectations](#general-guidance-on-making-contributions-and-expectations)

## Contributor Ladder

This document outlines the different contributor roles within the Cilium project, along with the responsibilities and privileges that come with them. Community members generally start at the first levels of the ladder and advance up it as their involvement in the project grows. Our contributors are happy to support your growth up the ladder!

Each of the contributor roles below is organized into three types of lists:
- **Responsibilities:** tasks that a contributor is expected to do at this level
- **Qualifications:** requirements a person needs to meet to be at that level
- **Privileges:** rights contributors on that level are entitled to

As the Cilium project grows, the current roles may be broken out into new roles and/or teams and roles may no longer be needed. 

The final judgment on whether an individual fulfills the criteria for a role is up to the Cilium Committers. After six months of inactivity for Committers and Reviewers, 18 months of inactivity for Organization Members, or after any behavior detrimental to the future of the project, any contributor can be removed from their position(s).

### Community Contributor

A Community Contributor contributes directly to the project and adds value to it. Contributions need not be code. People at the Community Contributor level may be new contributors, or they may only contribute occasionally.

* **Responsibilities:**

    * Must follow the [Cilium CoC](https://github.com/cilium/cilium/blob/master/CODE_OF_CONDUCT.md)
    * Adheres to the contributing guide for each project
      * For example, see [Cilium's 'How to Contribute' Guide](https://docs.cilium.io/en/stable/contributing/development/contributing_guide/) 

* **Qualifications:**

  Anybody that is participating in the Cilium community is welcome. Any contribution counts. 
  Some possible forms of contribution are:

    * Participating in community discussions
    * Helping other users in Slack or in person
    * Submitting bug reports
    * Trying out new releases
    * Attending community events
    * Giving talks about Cilium virtually or in person
    * Report and sometimes resolve issues
    * Occasionally submit PRs
    * Writing a CFP
    * Contribute to the documentation
    * Show up at community meetings and/or leads and/or takes notes
    * Answer questions from other community members
    * Submit feedback and comments on issues and PRs
    * Test releases and patches and submit reviews
    * Promote the project in public

  Non-code contributions can be documented by making a PR to add yourself to [CONTRIBUTORS.md](https://github.com/cilium/community/blob/main/CONTRIBUTORS.md). 

* **Privileges:**

    * Ability to be assigned to issues and ask for reviews
 
Becoming a Community Contributor is the first step towards becoming an Organization Member.

### Organization Member

An Organization Member is an established contributor who regularly participates in the project. Organization Members have privileges in project repositories and are therefore expected to act in the interests of the whole project. Organization Members can take on [additional roles within the project](CONTRIBUTOR-ROLES.md) and can work more independently, for example triggering CI. 

An Organization Member has all the rights and responsibilities of a Community Contributor, plus:

* **Responsibilities:**

    * Continues to contribute regularly
    * Work to accomplish the tasks they volunteer to do within the project

* **Qualifications:**

    * Must have successful contributions to the project, including at least one of the following:
        * Written and/or reviewed PRs,
        * Made contributions that resolved issues,
        * Or some equivalent combination or contribution
    * Must be actively contributing to at least one project area where the privileges of being an Organization Member will be beneficial

* **Privileges:**

    * Can trigger CI
    * Can leave reviews on PRs
    * Can recommend other Community Contributors to become Organization Members
    * Can nominate themselves to [other roles within Cilium](CONTRIBUTOR-ROLES.md)

The process for a Community Contributor to become an Organization Member is as follows:

1. Open a PR in the [member management file](ladder/members.yaml)
2. Receive two "LGTM" comments from any Organization Members, and approval by a committer who merges the PR

### Reviewer

A Reviewer has responsibility for specific code, documentation, test, or other project areas. They are collectively responsible, with other Reviewers, for reviewing all changes to those areas and indicating whether those changes are ready to merge. They have a track record of contribution and review in the project.

Reviewers are responsible for a "specific area." This can be a specific code directory, chapter of the docs, or other clearly-defined project component that is smaller than an entire repository or subproject. Most often, it is one or a set of directories in one or more Git repositories. This "specific area" as mentioned below refers to this area of responsibility.

Reviewers have all the rights and responsibilities of an Organization Member, plus:

* **Responsibilities:**

    * Following the [reviewing guide](https://docs.cilium.io/en/stable/contributing/development/contributing_guide/#pull-requests-review-process-for-committers) 
    * Regularly reviewing PRs against their specific areas of responsibility, including PRs that are assigned to them
    * Helping other contributors become reviewers
    * Review [Cilium Feature Proposals (CFPs)](https://github.com/cilium/design-cfps) and provide feedback

* **Qualifications:**

    * Is an Organization Member
    * Has a track record of constructive and valuable reviews
    * Has demonstrated an in-depth knowledge of the specific area, for example by resolving test failures or through contributions
    * Commits to being responsible for that specific area
    * Is supportive of new and occasional contributors and helps get useful PRs in shape to commit

* **Privileges:**

    * Has GitHub rights to approve PRs in specific directories, and to modify labels on PRs
    * Can recommend and review other Organization Members to become Reviewers

The process for an Organization Member to become a Reviewer is as follows:

1. Open a PR in the member management file for [the corresponding team](ladder/teams) assigned to a specific review area.
2. At least two members who are already Committers, approve the PR

Automated tooling assigns PRs across the Reviewers defined for each particular area. 

### Committer

Committers have write privileges and voting privileges, and are collectively responsible for steering the project in a positive direction. As such it represents a significant level of trust in an individual's commitment to working with other committers and the community at large for the benefit of the project. 

Committers have all the rights and responsibilities of a Reviewer, plus:

* **Responsibilities:**

    * Mentoring new Committers
    * Discussing strategy and policy for the project
    * [Voting](https://github.com/cilium/community/blob/main/GOVERNANCE.md#voting) on project matters when required
    * Additional responsibilities specific to any [project roles](CONTRIBUTOR-ROLES.md) they may have
    * Approve contributors to assume roles

* **Qualifications:**

    * Laid out in [granting commit access](https://github.com/cilium/community/blob/main/GOVERNANCE.md#granting-commit-access)
    * Is supportive of new and occasional contributors and helps get useful PRs in shape to commit
    * Is able to exercise judgment for the good of the project, independent of their employer, friends, or team
    * Mentors other contributors

* **Privileges:**

    * Can merge code into the repo(s) they are contributing to
    * Represent the project in public as a Committer
    * Can communicate with the CNCF on behalf of the project, and participate in CNCF maintainer activities including votes
    * Can nominate new Committers
    * Is listed as a Committer in Cilium's [MAINTAINERS.md](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md#cilium-committers)

Committers who are contributing and maintaining project code are automatically part of the Code Team defined in [CONTRIBUTOR-ROLES.md](CONTRIBUTOR-ROLES.md).

### Inactive Member

_Members are continuously active contributors in the community._

A core principle in maintaining a healthy community is encouraging active participation. It is inevitable that people's focuses will change over time and they are not expected to be actively contributing forever.

However, being a member of one of the Cilium GitHub organizations comes with an elevated set of permissions. These capabilities should not be used by those that are not familiar with the current state of the Cilium project.

Therefore members with an extended period away from the project with no activity will be removed from the Cilium GitHub Organizations and will be required to go through the [organization membership process](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md#organization-member) again after re-familiarizing themselves with the current state.

#### How inactivity is measured

Inactive members are defined as members of the Cilium org with **no** contributions across any repository within 18 months. This is measured by the CNCF [DevStats project](https://cilium.devstats.cncf.io/d/8/dashboards?orgId=1&refresh=15m).

**Note:** Devstats does not take into account non-code contributions. If a non-code contributing member is accidentally removed this way, they may open an issue to quickly be re-instated.

## General guidance on making contributions and expectations

We welcome people to raise PRs, issues, and [CFPs](https://github.com/cilium/design-cfps) in the Cilium project. If you're new to the project, we'd strongly encourage you to start off with small, but meaningful, changes first. These types of changes are easier and quicker for committers and reviewers to assess and give feedback on. You'll get the opportunity to learn about the [process and expectations](https://docs.cilium.io/en/stable/contributing/development/contributing_guide/) of making changes within the project. 

As an open source project, we don’t make any guarantees about how quickly proposed changes will get looked at. Committers and reviewers may have other pressures on their time, which could result in a reduced bandwidth to look at new proposals.

Naturally, the more an individual has already contributed to the project, the higher the level of trust and confidence that the person will have established in the community. Starting with smaller proposals, fixes and maintenance work, or making constructive and meaningful review comments on other people's suggestions, can help build up that trust and confidence. 

Accepting any change into the project means that the committers are signing up to maintain it going forward. To quote [Solomon Hykes](https://x.com/solomonstre/status/715277134978113536?s=20), "no is temporary, yes is forever". For major changes, being willing to push through the development work may not be enough - it’s likely you will need a track record of contributions to convince the community that you’ll be around to maintain changes into the future. 