name: Contributor Ladder
description: Request to move up the Contributor Ladder
labels: ["kind/contributor-ladder"]
body:
  - type: markdown
    attributes:
      value: |
        If this pull request is to add yourself to the Cilium Organization as an [Org Member](https://github.com/cilium/community/blob/main/ladder/members.yaml):
         1. Review the [qualifications](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md#organization-member).
         2. Add a list of your previous contributions to the pull request description. This helps reviewers understand your involvement and context.

        If this pull request is to add yourself as a [reviewer for a specific team](https://github.com/cilium/community/tree/main/ladder/teams):
         1. Ensure that you are already a Cilium Org Member.
         2. Review the [qualifications](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md#reviewer).
         3. Add a list of your previous contributions to the pull request description. This helps reviewers understand your involvement and context.
  - type: dropdown
    id: role
    attributes:
      label: Role
      description: |
        What role are you requesting on the Cilium Contributor Ladder?
      options:
        - Organization Member
        - Reviewer
  - type: textarea
    id: issues-opened
    attributes:
      label: Issues Opened
      description: Link to issues you have opened. Check this with https://github.com/cilium/cilium/issues?q=is%3Aissue+author%3AGITHUB-USER-ID
  - type: textarea
    id: prs-reviewed
    attributes:
      label: PRs Reviewed
      description: Link to pull requests you have reviewed. Check this with https://github.com/cilium/cilium/pulls?q=is%3Apr+reviewed-by%3AGITHUB-USER-ID
  - type: textarea
    id: prs-authored
    attributes:
      label: PRs Authored
      description: Link to pull requests you have authored. Check this with https://github.com/cilium/cilium/pulls?q=is%3Aopen%7Cclosed+author%3AGITHUB-USER-ID
  - type: textarea
    id: discussions
    attributes:
      label: Discussions and Participation
      description: Links to discussions or issues you actively participated in
  - type: textarea
    id: involvement-notes
    attributes:
      label: Other Involvement and Notes
      description:  Other relevant community involvement, information, or context for the reviewers
