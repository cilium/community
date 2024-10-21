# Cilium SIGS

The Cilium project has Special Interest Groups, or SIGs, with a common purpose of advancing the project with respect to a specific topic, such as network policy or documentation. Our goal is to enable a distributed decision structure and code ownership, as well as providing focused forums for getting work done, making decisions, and onboarding new contributors. 

Areas covered by SIGs may be vertically focused on particular components or functions, cross-cutting/horizontal, spanning many/all functional areas of the project, or in support of the project itself. Examples:
- Policy, Scaling, Tetragon, Hubble, Service Mesh


Each SIG must have a charter that specifies its scope (topics, subsystems, code repos, and/or directories), responsibilities, areas of authority, how members and roles of authority/leadership are selected/granted, how decisions are made, and how conflicts are resolved. See the SIG charter process for details on how charters are managed. SIGs are relatively free to customize or change how they operate, within some broad guidelines and constraints imposed by cross-project processes (e.g., the release process) and assets (e.g., the cilium repo).

A primary reason that SIGs exist is as forums for collaboration. Much work in a SIG should stay local within that SIG. However, SIGs must communicate in the open, ensure other SIGs and community members can find notes of meetings, discussions, designs, and decisions, and periodically communicate a high-level summary of the SIG's work to the community.

# SIG Roles
## SIG Lead

- Membership tracked in sigs.yaml
- Must be an odd number of SIG Leads in a group
- MUST be a review of one or more areas of the project, and should be a subject matter expert in their SIG area
- SHOULD define how priorities and commitments are managed. MAY delegate to other leads as needed.
- SHOULD drive charter changes (including creation) to get community buy-in but MAY delegate content creation to SIG contributors.
- MUST identify, track, and maintain the metadata of the SIGs enhancements for the current release and serve as point of contact for the release team, but MAY delegate to other contributors to fulfill these responsibilities.
- MUST organize a main group meeting and make sure sigs.yaml is up to date
- SHOULD facilitate meetings but MAY delegate to other members or future chairs/chairs in training.
- MUST ensure meetings are recorded and made at least notes made available.
- MUST coordinate communication and be a connector with other community groups like SIGs and the committers but MAY delegate the actual communication and creation of content to other contributors where appropriate.

### Requirements
Chairs MUST be at least a "member" on our contributor ladder to be eligible to hold a leadership role within a SIG.
SIGs MAY prefer various levels of domain knowledge depending on the role. This should be documented.


### On-boarding and Off-boarding Leads
Chairs MAY decide to step down at anytime and propose a replacement. Use lazy consensus amongst the other Chairs with fallback on majority vote to accept the proposal. The candidate SHOULD be supported by a majority of SIG contributors.
Chairs MAY select additional leads through a super-majority vote amongst Chairs. This SHOULD be supported by a majority of SIG contributors.


## Other Roles
This governance document outlines the required roles for SIGs; however, SIGs are allowed to operate how they see fit outside of minimum governance requirements, including defining more roles to sustain the group. If a SIG needs to change the Chair position to include or remove duties, this needs to be approved by the committers. Newly created roles that don't assume any responsibility of Chairs should follow the governing processes in the SIGs charter.

# SIG Creation

## Goals
The primary goal of the charters is to define the scope of the SIG within Kubernetes and how the SIG leaders exercise ownership of these areas by taking care of their responsibilities. A majority of the effort should be spent on these concerns.

### SIG Charter Guide
All Cilium SIGs must define a charter defining the scope and governance of the SIG.
The scope must define what areas the SIG is responsible for directing and maintaining.
The governance must outline the responsibilities within the SIG as well as the roles owning those responsibilities.


### Steps to create a SIG charter
1. Copy the template into a new file under community/sig-YOURSIG/charter.md
1. Read the Recommendations and requirements so you have context for the template
1. Fill out the template for your SIG
1. Update sigs.yaml with the individuals holding the roles as defined in the template.
1. Create a pull request with a draft of your charter.md and sigs.yaml changes. Communicate it within your SIG and get feedback as needed.
1. Send the SIG Charter out for review to the Cilium committers.
1. Once accepted, the committers will ratify the PR by merging it.


### Steps to update an existing SIG charter
For significant changes, or any changes that could impact other SIGs, such as the scope, create a PR and send it to the committers for review with the subject: "SIG Charter Update: YOURSIG"
For minor updates to that only impact issues or areas within the scope of the SIG the SIG Chairs should facilitate the change.
SIG Charter approval process
When introducing a SIG charter or modification of a charter the following process should be used. As part of this we will define roles for the OARP process (Owners, Approvers, Reviewers, Participants)

1. Identify a small set of people from the SIG to drive the changes. Most typically this will be the SIG chairs.
1. Work with the rest of the SIG in question to craft the changes. Make sure to keep the SIG in the loop as discussions progress with the committers.
1. Work with the committers to gain approval. This can simply be submitting a PR and sending a slack message. If more substantial changes are desired it is advisable to socialize those before drafting a PR.
1. The committers will be looking to ensure the scope of the SIG as represented in the charter is reasonable (and within the scope of Cilium) and that processes are fair.


# SIG Governance

To standardize Special Interest Group efforts, create maximum transparency, and route contributors to the appropriate SIG; SIGs should follow these guidelines:

- Have an approved Charter.
- Keep up-to-date meeting notes, linked from the SIG's page in the community repo.
- Ensure related work happens in a project-owned GitHub org and repository.
- Use the forums provided as the primary means of working, communicating, and collaborating, as opposed to private emails and meetings.
- Track and identify all CFPs and other project enhancements related to the SIG area.

## SIG Retirement
In the event that the SIG is unable to regularly establish consistent quorum or otherwise fulfill its Organizational Management responsibilities
- after 3 or more months it SHOULD be retired
- after 6 or more months it MUST be retired


## SIG Charter Template
### Scope
Include a 2-3 sentence summary of what work SIG TODO does. Imagine trying to explain your work to a colleague who is familiar with Cilium but not necessarily all of the internals.

#### In scope
- Code, Binaries and Services
- list of what qualifies a piece of code, binary or service
- as falling into the scope of this SIG
- e.g. clis for working with Cilium APIs,
- CI for Cilium repos, etc
- This is NOT a list of specific code locations,
Cross-cutting and Externally Facing Processes
- list of the non-internal processes
- that are owned by this SIG
- e.g. qualifying and cutting a Cilium release,
- organizing mentorship programs, etc

#### Out of scope
Outline of things that could be confused as falling into this SIG but don't or don't right now.

