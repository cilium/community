# Governance

**Table of Contents**

* [Cilium committer grant/revocation policy](#cilium-committer-grantrevocation-policy)
  * [Expectations for developers with commit access](#expectations-for-developers-with-commit-access)
    * [Prerequisites](#prerequisites)
    * [Review](#review)
    * [Git conventions](#git-conventions)
    * [CNCF resources](#cncf-resources)
    * [Code of Conduct](#code-of-conduct)
  * [Granting commit access](#granting-commit-access)
  * [Revoking commit access](#revoking-commit-access)
  * [Offboarding](#offboarding)
  * [Changing the policy](#changing-the-policy)
* [Voting](#voting)
  * [Company Block Vote Limit](#company-block-vote-limit)
* [Templates](#templates)
  * [Nomination to grant commit access](#nomination-to-grant-commit-access)
  * [Vote to grant commit access](#vote-to-grant-commit-access)
  * [Vote results for grant of commit access](#vote-results-for-grant-of-commit-access)
  * [Invitation to accepted committer](#invitation-to-accepted-committer)
  * [Proposal to remove commit access for inactivity](#proposal-to-remove-commit-access-for-inactivity)
  * [Notification of commit access removal for inactivity](#notification-of-commit-access-removal-for-inactivity)
  * [Proposal to revoke commit access for detrimental behavior](#proposal-to-revoke-commit-access-for-detrimental-behavior)
  * [Vote to revoke commit access](#vote-to-revoke-commit-access)
  * [Vote results for revocation of commit access](#vote-results-for-revocation-of-commit-access)
  * [Notification of commit access revocation for detrimental behavior](#notification-of-commit-access-revocation-for-detrimental-behavior)

## Cilium committer grant/revocation policy

A [Cilium committer](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md#committer) is a participant in the project with the ability to commit code directly to the main branch. Commit access grants a broad ability to affect the progress of the project as presented by its most important artifact, the code and related resources that produce working binaries of Cilium. As such it represents a significant level of trust in an individual’s commitment to working with other committers and the community at large for the benefit of the project. It cannot be granted lightly and, in the worst case, must be revocable if the trust placed in an individual was inappropriate.

Becoming a Cilium committer also grants the status of Cilium [“maintainer” in CNCF parlance](https://contribute.cncf.io/about/maintainers-circle/#who-is-a-maintainer). This means that Cilium committers can use the [CNCF Service Desk](https://github.com/cncf/servicedesk) to request services on behalf of the project, and will also receive a vote on certain CNCF matters. 

This document suggests guidelines for granting and revoking commit access. It is intended to provide a framework for evaluation of such decisions without specifying deterministic rules that wouldn’t be sensitive to the nuance of specific situations. In the end, the decision to grant or revoke committer privileges is a judgment call made by the existing set of committers.

For the list of current committers, see [MAINTAINERS.md](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md).

### Expectations for developers with commit access

#### Prerequisites

Be familiar with Cilium's [Development Guide](https://docs.cilium.io/en/stable/contributing/development/#dev-guide) and have [two-factor authentication](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa/configuring-two-factor-authentication) enabled on your GitHub account.

#### Review

Code (yours or others’) must be reviewed publicly (by you or others) before you push it to the repository. Every change needs at least one review.

If one or more people know an area of code particularly well, code that affects that area should ordinarily get a review from one of them.

The riskier, more subtle, or more complicated the change, the more careful the review required. When a change needs careful review, use good judgment regarding the quality of reviews received. If a change adds 1000 lines of new code, and a review posted 5 minutes later just says “Looks good,” then this is probably not a quality review.

While the size of a change is generally correlated with the amount of care needed in review, it is not strictly tied to it. A search and replace across many files may not need much review, but one-line optimization changes can have widespread implications.

Regularly review submitted code in areas where you have expertise. Consider reviewing other code as well.

#### Git conventions

If you apply a change (yours or another’s) then it is your responsibility to handle any resulting problems, especially broken builds and other regressions. If it is someone else’s change, then you can ask the original submitter to address it. Regardless, you need to ensure that the problem is fixed in a timely way. The definition of “timely” depends on the severity of the problem.

If a bug is present on main and other branches, fix it on main first, then backport the fix to other branches. Straightforward backports do not require additional review (beyond that for the fix on main).

Feature development should be done only on main. Occasionally it makes sense to add a feature to the most recent release branch, before the first actual release of that branch. These should be handled in the same way as bug fixes: first implemented on main and then backported.

Keep the authorship of a commit clear by maintaining a correct list of “Signed-off-by:”s. If a confusing situation comes up, as it occasionally does, bring it up in the development forums. If you explain the use of “Signed-off-by:” to a new developer, explain not just how but why, since the intended meaning of “Signed-off-by:” is more important than the syntax.

Use Reported-by: and Tested-by: tags in commit messages to indicate the source of a bug report.

Keep the [AUTHORS](https://github.com/cilium/cilium/blob/main/AUTHORS) file up to date.

#### CNCF resources

Any committer may suggest a request for [CNCF resources](https://www.cncf.io/services-for-projects/) through the [CNCF Service Desk](https://cncfservicedesk.atlassian.net/servicedesk/customer/portal/1). Committers may also choose to delegate working with the CNCF to non-committer community members.

#### Code of Conduct

[Code of Conduct](https://github.com/cilium/cilium/blob/main/CODE_OF_CONDUCT.md) violations by community members will be discussed and resolved on the private ```#committers``` channel on [Cilium Slack](https://cilium.herokuapp.com/). If the reported Code of Conduct violator is a committer, the other committers will instead designate two committers to work with the [CNCF CoC Committee](https://www.cncf.io/conduct/committee/).

### Granting commit access

Granting commit access should be considered when a candidate has demonstrated the following in their interaction with the project:

* Contribution of significant new features through the patch submission process whereby submissions:
  * are free of obvious critical defects, and
  * do not typically require many iterations of improvement to be accepted
* Consistent participation in code review of others' patches, including existing committers, with comments consistent with the overall project standards
* Assistance to those in the community who are less knowledgeable through active participation in project forums
* Plans for sustained contribution to the project compatible with the [project’s direction](./VISION.md) as viewed by current committers
* Commitment to meet the expectations described in [Expectations for developers with commit access](#expectations-for-developers-with-commit-access)

The process to grant commit access to a candidate is as follows:

* An existing committer nominates the candidate by sending a message in the ```#committers``` Slack channel to all existing committers with information substantiating the contributions of the candidate in the areas described above.
* All existing committers discuss the pros and cons of granting commit access to the candidate in the Slack thread.
* When the discussion has converged or a reasonable time has elapsed without discussion developing (for example, a few business days), the nominator calls for a final decision on the candidate with a followup Slack poll.
* Each committer may vote yes, no, or abstain by responding to the Slack poll. A failure to reply is an implicit abstention.
* After votes from all existing committers have been collected or a reasonable time has elapsed for them to be provided (for example, a couple of business days), the votes are evaluated. To be granted commit access, the candidate must receive yes votes from a majority of the existing committers and zero no votes. Since a no vote is effectively a veto of the candidate, it should be accompanied by a reason for the vote.
* The nominator summarizes the result of the vote in a Slack message to all existing committers. Report the votes after applying the [Company Block Vote Limit](#company-block-vote-limit).
* If the vote to grant commit access passed, the candidate is contacted with an invitation to become a committer to the project which asks them to agree to the committer expectations documented in [Expectations for developers with commit access](#expectations-for-developers-with-commit-access).
* If the candidate agrees, access is granted by setting up commit access:
  1. Delete the nomination poll and related discussions to preserve the privacy of any discussions regarding the newly nominated committer. If any discussion may be relevant for subsequent project governance discussion, those remarks may optionally be summarized and reposted to the channel. The final vote summary does not need to be deleted.
  2. Invite the new committer to the ```#committers``` Slack channel.
  3. Add the new committer to the list in [MAINTAINERS.md](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md).
  4. Add the new committer to the [CNCF’s list of Cilium maintainers](https://github.com/cncf/foundation/blob/main/README.md#other-content).
  5. Add the new committer to the [Committers team](https://github.com/orgs/cilium/teams/committers).

### Revoking commit access

There are two situations in which commit access might be revoked.

The first, more straightforward situation is a committer who is no longer active in the project and has no plans to become active in the near future. The process in this case is:

* When a committer has been inactive for more than 6 months, any other committer to the project may identify that committer as a candidate for revocation of commit access due to inactivity.
* The plans of revocation should be sent in a private Slack message or email to the candidate.
* If the candidate for removal states plans to continue participating, no action is taken and this process terminates.
* If the candidate replies they no longer require commit access, then commit access is removed and a notification is sent to the candidate and all existing committers.
* If the candidate cannot be reached within 1 week of the first attempt to contact, this process continues.
* A message proposing removal of commit access is sent to the candidate and all other committers.
* If the candidate for removal states plans to continue participating, no action is taken.
* If the candidate replies they no longer require commit access, then their access is removed.
* If the candidate cannot be reached within 2 months of the second attempt to contact, access is removed.
* In any case, where access is removed, this fact is published through a Slack message to all existing committers (including the candidate for removal) and the [Offboarding](#offboarding) procedure is applied.

The second, more difficult situation is a committer who is behaving in a manner that is viewed as detrimental to the future of the project by other committers. This is a delicate situation with the potential for division within the greater community and should be handled with care. The process in this case is:

* Discuss the behavior of concern with the individual privately and explain why you believe it is detrimental to the project. Stick to the facts and keep the Slack messages professional. Avoid personal attacks and the temptation to hypothesize about unknowable information such as the other’s motivations. Make it clear that you would prefer not to discuss the behavior more widely, but will have to raise it with other contributors if it does not change. Ideally the behavior is eliminated and no further action is required. If not,
* Start a Slack thread with all committers, including the individual in question. Describe the behavior and the reason it is detrimental to the project. The message should have the same tone as the private discussion and should generally repeat the same points covered in that discussion. The person whose behavior is being questioned should not be surprised by anything presented in this discussion. Ideally the wider discussion provides more perspective to all participants and the issue is resolved. If not,
* Start a Slack thread with all committers, excluding the individual in question. Request a vote on revocation of commit rights. Cite the discussion among all committers and describe all the reasons why it was not resolved satisfactorily. The Slack message should be carefully written with the knowledge that the reasoning it contains may be published to the larger community to justify the decision.
* Each committer may vote yes, no, or abstain by responding to the Slack poll. A failure to reply is an implicit abstention.
* After all votes have been collected or a reasonable time has elapsed for them to be provided (for example, a couple of business days) the votes are evaluated. For the request to revoke commit access to pass, it must receive yes votes from two thirds of the existing committers. Anyone that votes no must provide their reasoning.
* If the proposal passes, counter-arguments found in the reasonings of no votes should be documented along with the initial reasons the revocation was proposed. Ideally there should be no new counter-arguments supplied in a no vote as all concerns should have surfaced in the discussion before the vote.
* The original person to propose revocation summarizes the result of the vote in a Slack message to all existing committers excepting the candidate for removal.
* If the vote to revoke commit access passes, access is removed and the candidate for revocation is informed of that fact and the reasons for it as documented in the Slack message requesting the revocation vote. The [Offboarding](#offboarding) procedure is applied.
* Ideally the revoked committer peacefully leaves the community and no further action is required. However, there is a distinct possibility that they will try to generate support for their point of view within the larger community. In this case, the reasoning for removing commit access as described in the request for a vote will be published to the community.

A committer may also choose to retire at any time by notifying the team. In this simple case, no further process is needed and the [Offboarding](#offboarding) procedure is applied.

### Offboarding

The former committer is:

* Removed from the ```#committers``` Slack channel
* Removed from the list in [MAINTAINERS.md](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md)
* Removed from the [CNCF’s list of Cilium maintainers](https://github.com/cncf/foundation/blob/main/README.md#other-content)
* Removed from the [Committers team](https://github.com/orgs/cilium/teams/committers)
* Added to the list of [Cilium emeritus committers](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md#cilium--hubble-emeritus-committers), if they so choose


### Changing the policy

The process for changing the policy is:

* Propose the changes to the policy in a Slack message to all current committers and request discussion.
* After an appropriate period of discussion (a few days), update the proposal based on feedback if required and resend it to all current committers with a request for a formal vote.
* After all votes have been collected or a reasonable time has elapsed for them to be provided (for example, a couple of business days), the votes are evaluated. For the request to modify the policy to pass, it must receive yes votes from two thirds of the existing committers.

This does not apply to editorial changes, which can be implemented via lazy consensus. This includes things like stylistic tweaks, fixing spelling or grammar, or updating links. 

## Voting

In general, we prefer that technical issues, governance issues, and community membership are amicably worked out between the persons involved. If a dispute cannot be decided independently, the committers can be called in to decide on an issue. If the committers themselves cannot decide on an issue, the issue will be resolved by voting. The voting process is a simple majority in which each committer receives one vote, subject to the Company Block Vote Limit.

Votes are done in the Slack channel ```#committers``` using Slack polls. A failure to vote is an implicit abstention.

### Company Block Vote Limit

In the spirit of ensuring a diverse community, the number of votes a single company can receive is limited to 6 votes. The company affiliation of committers is documented in the [MAINTAINERS.md](https://github.com/cilium/cilium/blob/main/MAINTAINERS.md) file.

Votes are counted within the company association and then broken down proportionally. For example, if 7 committers from a company vote, with 6 voting yes and 1 voting no:

* 6 / (7/6) = 5.14 = 5 votes yes
* 1 / (7/6) = 0.85 = 1 vote no

## Templates

### Nomination to grant commit access

```
I would like to nominate *[candidate]* for commit access. I believe
*[he/she/they]* has met the conditions for commit access described in the
committer grant policy on the project web site in the following ways:

*[list of requirements & evidence]*

Please reply to all in this message thread with your comments and
questions. If that discussion concludes favorably I will request a formal
vote on the nomination in a few days.
```

### Vote to grant commit access

```
I nominated *[candidate]* for commit access on *[date]*. Having allowed
sufficient time for discussion it's now time to formally vote on the
proposal.

Please reply to all in this thread with your vote of: YES, NO, or ABSTAIN.
A failure to reply will be counted as an abstention. If you vote NO, by our
policy you must include the reasons for that vote in your reply. The
deadline for votes is *[date and time]*.

If a majority of committers vote YES and there are zero NO votes commit
access will be granted.
```

### Vote results for grant of commit access

Vote results should be reported based on the vote count after applying the [Company Block Vote Limit](#company-block-vote-limit).

```
The voting period for granting to commit access to *[candidate]* initiated
at *[date and time]* is now closed with the following results:

YES: *[count of yes votes]* (*[% of voters]*)
NO: *[count of no votes]* (*[% of voters]*)
ABSTAIN: *[count of abstentions]* (*[% of voters]*)

With the Company Block Vote Limit applied:

YES: [per-company block vote formula] + [...block vote formula] = [total] votes
NO: [count of no votes] votes

Based on these results committer status *[is/is NOT]* granted and *[she/he/they]*
*[will/will NOT]* be added to the list of Cilium maintainers at the CNCF.
```

### Invitation to accepted committer

```
Due to your sustained contributions to the Cilium project we
would like to provide you with commit access to the project repository.
Developers with commit access must agree to fulfill specific
responsibilities described in the community repository:

    /GOVERNANCE.md#expectations-for-developers-with-commit-access

Please let us know if you would like to accept commit access and if so that
you agree to fulfill these responsibilities. Once we receive your response
we'll set up access. We're looking forward continuing to work together to
advance the Cilium project.
```

### Proposal to remove commit access for inactivity

```
Committer *[candidate]* has been inactive for *[duration]*. I have
attempted to privately contact *[him/her]* and *[he/she/they]* could not be
reached.

Based on this I would like to formally propose removal of commit access.
If a response to this message documenting the reasons to retain commit
access is not received by *[date]* access will be removed.
```

### Notification of commit access removal for inactivity

```
Committer *[candidate]* has been inactive for *[duration]*. *[He/she/they]*
*[stated no commit access is required/failed to respond]* to the formal
proposal to remove access on *[date]*. Commit access has now been removed
and *[she/he/they]* is being removed from the CNCF's list of Cilium maintainers.
```

### Proposal to revoke commit access for detrimental behavior

```
I regret that I feel compelled to propose revocation of commit access for
*[candidate]*. I have privately discussed with *[him/her/them]* the following
reasons I believe *[his/her/their]* actions are detrimental to the project and we
have failed to come to a mutual understanding:

*[List of reasons and supporting evidence]*

Please reply to all in this thread with your thoughts on this proposal.  I
plan to formally propose a vote on the proposal on or after *[date and
time]*.

It is important to get all discussion points both for and against the
proposal on the table during the discussion period prior to the vote.
Please make it a high priority to respond to this proposal with your
thoughts.
```

### Vote to revoke commit access

```
I nominated *[candidate]* for revocation of commit access on *[date]*.
Having allowed sufficient time for discussion it's now time to formally
vote on the proposal.

Please reply to all in this thread with your vote of: YES, NO, or ABSTAIN.
A failure to reply will be counted as an abstention. If you vote NO, by our
policy you must include the reasons for that vote in your reply. The
deadline for votes is *[date and time]*.

If 2/3rds of committers vote YES commit access will be revoked.

The following reasons for revocation have been given in the original
proposal or during discussion:

*[list of reasons to remove access]*

The following reasons for retaining access were discussed:

*[list of reasons to retain access]*

The counter-argument for each reason for retaining access is:

*[list of counter-arguments for retaining access]*
```

### Vote results for revocation of commit access

Vote results should be reported based on the vote count after applying the [Company Block Vote Limit](#company-block-vote-limit).

```
The voting period for revoking the commit access of *[candidate]* initiated
at *[date and time]* is now closed with the following results:

-  YES: *[count of yes votes]* (*[% of voters]*)
-  NO: *[count of no votes]* (*[% of voters]*)
-  ABSTAIN: *[count of abstentions]* (*[% of voters]*)

With the Company Block Vote Limit applied:

YES: [per-company block vote formula] + [...block vote formula] = [total] votes
NO: [count of no votes] votes

Based on these results commit access *[is/is NOT]* revoked. The following
reasons for retaining commit access were proposed in NO votes:

*[list of reasons]*

The counter-arguments for each of these reasons are:

*[list of counter-arguments]*
```

### Notification of commit access revocation for detrimental behavior

```
After private discussion with you and careful consideration of the
situation, the other committers to the Cilium project have
concluded that it is in the best interest of the project that your commit
access to the project repositories be revoked and this has now occurred.
Your address is also being removed from the CNCF's list of Cilium maintainers.

The reasons for this decision are:

*[list of reasons for removing access]*

While your goals and those of the project no longer appear to be aligned, we
greatly appreciate all the work you have done for the project and wish you
continued success in your future work.
```
