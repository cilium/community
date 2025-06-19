# How Cilium GitHub Teams Are Managed
The Cilium project makes use of GitHub teams to help enforce responsibility boundaries with regard to the project codebase here on GitHub.
GitHub teams loosely map groups of [contributors](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md) to the Cilium Project as either reviewers and/or committers, focused on a portion of the codebase. [GitHub teams](https://github.com/orgs/cilium/teams) used to manage code access and review responsibilities.

For example, the Cilium Project Code team, may require multiple GitHub teams in the Cilium GitHub organization to self-organize their work. 
These multiple GitHub teams will be composed of contributors at different steps along the contributor ladder: organizational members, reviewers, and committers.  
The different GitHub teams have different permissions, corresponding to the level of code access needed by the members of that team. 

Cilium GitHub organization team memberships can be self-managed by making use of team membership configuration files in this directory.

Each Cilium GitHub team can establish a file in this directory managed by the CODEOWNERS system with the assistance of 
the Cilium GitHub organization [admins](https://github.com/cilium/community/blob/main/ADMINS-FOR-CILIUM.md) (or duly deputized members of the org tasked with helping initiating team self-management). 
You can submit a PR against the Community repository to start the process to request a new team configuration and the correct Cilium contributors should be pulled into review.

Changes to files in this directory, when merged into the main branch (after appropriate approvals and review), 
will propogate via GitHub API automation and be reflected in the Cilium GitHub Organization's [teams](https://github.com/orgs/cilium/teams).

## GitHub Team Member and Mentors
With membership comes both privileges and responsibilities.  One of the responsibilities of being on an active Cilium GitHub team member is 
being available for automatic pull request review assignment for files owned by that GitHub team. 

Over time as contributors transition from one GitHub team to another inside the project, while not active on a team any longer, 
their historic experience may be needed to help review proposed changes with functionality they have insight into.  In these cases these 
individuals can be added to the team's mentor list in the team configuration file here. Mentors are no longer part of the auto-assigned PR review rotation, 
but they can still keep team approval access. Active Mentors of a team are expected to provide guidance to others in the team and seek reviews they 
should participate in for the code owner area.

## Don't Forget to Set Your GitHub Status
As an active team member, if you are not available for an extended period of time (for example, you go on vacation for several days), 
set yourself as busy in the [GitHub status](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/personalizing-your-profile#setting-a-status). If your status is busy GitHub will skip you to the pull request review rotation for the teams you are on.

Note: Not everyone should be busy all at the same time on a GitHub team if it can be avoided. Cilium Team Management automation puts 
some guardrails on this and lets the Cilium project know if there aren't sufficient number of reviewers. The GitHub organization owners (or someone 
delegated to keep tabs on this) will periodically check to see if teams are meeting the expectations of number of people 
available for review assignment and will reach out to teams if there appears to be a chronic shortfall.

## Team Configuration File Format

Each Cilium GitHub team that wants to self-service their team members (and mentors!) can have a file in this directory named `TEAM_NAME.yaml`
The file contents as the form of
```
# Team members with rights such as commit and approval, as appropriate for the team.
# They participate in automatic Pull Requests reviews rotation,
# unless they also are listed as mentors below in this file.
members:
 - username_01
 - username_02
 - username_03

# Contributors with experience in the team area.
# They don't have team rights such as commit and approval,
# unless they are also listed as members above.
# They are never part of the automatic PRs reviews rotation.
mentors:
 - username_02
 - username_04
```

In this mockup team file, `username_02` is both a member and a mentor and would be excluded from auto-assignment of PR reviews, but would 
have other team rights such as commit and approval for changes to files owned by this team.

`username_01` and `username_03` are active team members participating in the automatic PR review rotation.

`username_04` is listed as a mentor, but not a member. This person doesn't have normal team member access to approve. However, this can be useful to document who may have historical insight into code functionality owned by this team.
