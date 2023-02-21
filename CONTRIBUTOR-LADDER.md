# Contributor Ladder

* [Contributor Ladder](#contributor-ladder)
    * [Community Contributor](#community-contributor)
    * [Organization Member](#organization-member)
    * [Reviewer](#reviewer)
    * [Committer](#committer)

## Contributor Ladder

Hello! We are excited that you want to learn more about our project contributor ladder! This contributor ladder outlines the different contributor roles within the Cilium project, along with the responsibilities and privileges that come with them. Community members generally start at the first levels of the "ladder" and advance up it as their involvement in the project grows.  Our contributors are happy to help you advance along the contributor ladder.

Each of the contributor roles below is organized into lists of three types of things. "Requirements" are things that a contributor is expected to do at that level. "Qualifications" are qualifications a person needs to meet to be at that level (may be one or any/all of them), and "Privileges" are things contributors on that level are entitled to.

As the Cilium project grows, the current roles may be broken out into new roles and/or teams and roles may no longer be needed. 

The final judgment on whether an individual fulfills the criteria for a role is up to the Cilium Committers. After six months of inactivity, any contributor can be removed from their position(s).

### Community Contributor

* Responsibilities:
    * Must follow the [Cilium CoC](https://github.com/cilium/cilium/blob/master/CODE_OF_CONDUCT.md)
    * Follow the [contributing guide](https://docs.cilium.io/en/stable/contributing/development/contributing_guide/) 

* Qualifications:
Anybody that is participating in the Cilium community is welcome. Any contribution counts. Some possible forms of contribution are:
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

Non-code contributions can be documented by making a PR to add yourself to CONTRIBUTORS.md. 

* Privileges:
    * Ability to be assigned to Issues and ask for Reviews
 
Becoming a Community Contributor is the first step towards becoming an Organization Member

### Organization Member
Description: An Organization Member is an established contributor who regularly participates in the project. Organization Members have privileges in project repositories and as such are expected to act in the interests of the whole project. Organization Members can take on additional roles within the project and can work more independently, for example triggering CI. 

An Organization Member has all the rights and responsibilities of a Community Contributor, plus:

* Responsibilities:
    * Continues to contribute regularly
    * Work to accomplish the tasks they volunteer to do within the project

* Qualifications:
    * Must have successful contributions to the project, including at least one of the following:
        * Written and/or reviewed PRs,
        * Reviewed PRs,
        * Made contributions that resolved Issues,
        * Or some equivalent combination or contribution
    * Must be actively contributing to at least one project area, where the privileges of Organization Member will be beneficial

* Privileges:
    * Can trigger CI
    * Can leave reviews on PRs
    * Can recommend other contributors to become Cilium Github Org Members
    * Can nominate themselves to other roles within Cilium

The process for a Contributor to become an Organization Member is as follows:

1. Open a PR in the member management file
2. Receive two “LGTM” comments from any Org Members, and approval by a committer who merges the PR

### Reviewer
Description: A Reviewer has responsibility for specific code, documentation, test, or other project areas. They are collectively responsible, with other Reviewers, for reviewing all changes to those areas and indicating whether those changes are ready to merge. They have a track record of contribution and review in the project.
Reviewers are responsible for a "specific area." This can be a specific code directory, chapter of the docs, or other clearly-defined project component that is smaller than an entire repository or subproject. Most often it is one or a set of directories in one or more Git repositories. The "specific area" below refers to this area of responsibility.
Reviewers have all the rights and responsibilities of an Organization Member, plus:
* Responsibilities:
    * Following the [reviewing guide](https://docs.cilium.io/en/stable/contributing/development/contributing_guide/#pull-requests-review-process-for-committers) 
    * Regularly reviewing Pull Requests against their specific areas of responsibility, including Pull Requests that are assigned to them
    * Helping other contributors become reviewers
    * Review CFPs and provide feedback

* Requirements:
    * Is an Organization Member
    * Has a track record of constructive and valuable reviews
    * Has demonstrated an in-depth knowledge of the specific area, for example by resolving test failures or through contributions
    * Commits to being responsible for that specific area
    * Is supportive of new and occasional contributors and helps get useful PRs in shape to commit
* Privileges:
    * Has GitHub rights to approve pull requests in specific directories
    * Can recommend and review other Org Members to become Reviewers

The process for an Organization Member to become a Reviewer is as follows:

1. Open a PR in the member management file for the correct team
2. At least two members who are already Committers, approve the PR

Automated tooling assigns PRs across the Reviewers defined for each particular area. 

### Committer
Description: Committers have write privileges and voting privileges, and are collectively responsible for steering the project in a positive direction. As such it represents a significant level of trust in an individual’s commitment to working with other committers and the community at large for the benefit of the project. 

Committers have all the rights and responsibilities of a Reviewer, plus:

* Responsibilities:
    * Mentoring new Committers
    * Discussing strategy and policy for the project
    * [Voting](https://docs.cilium.io/en/latest/community/governance/commit_access/#voting) on project matters when required
    * Additional responsibilities specific to any project Roles they may have
    * Approve contributors to assume roles

* Qualifications:
    * Laid out in [granting commit access](https://docs.cilium.io/en/latest/community/governance/commit_access/#granting-commit-access)
    * Is supportive of new and occasional contributors and helps get useful PRs in shape to commit
    * Is able to exercise judgment for the good of the project, independent of their employer, friends, or team
    * Mentors other contributors
* Privileges:
    * Can merge code into the repo(s) they are contributing to
    * Represent the project in public as a Committer
    * Can communicate with the CNCF on behalf of the project, and participate in CNCF maintainer activities including votes
    * Can nominate new Committers
    * Is listed as a Committer in the MAINTAINERS.md

Committers who are contributing and maintaining project code are automatically part of the Code Team defined in Roles.
