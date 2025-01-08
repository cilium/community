# Cilium SIGS

The Cilium project has Special Interest Groups, or SIGs, with a common purpose of advancing the project with respect to a specific topic, such as network policy or documentation. Our goal is to enable a distributed decision structure and code ownership, as well as providing focused forums for getting work done, making decisions, and onboarding new contributors. 

Areas covered by SIGs may be vertically focused on particular components or functions, cross-cutting/horizontal, spanning many/all functional areas of the project, or in support of the project itself. Examples:

- Policy
- Scalability
- Docs

Each SIG must have a charter that specifies its scope (topics, subsystems, code repos, and/or directories), responsibilities, and areas of authority. See the SIG charter process for details on how charters are managed. SIGs are relatively free to customize or change how they operate, within some broad guidelines and constraints imposed by cross-project processes (e.g., the release process) and assets (e.g., the Cilium repo).

SIGs are designed to help contributors gain depth in a specific area of the Cilium project. Committers that are aspiring reviewers of the Cilium project can gain expertise by getting involved with a SIG and getting assigned PRs.

SIGs don't have any additional authority - they are expected to drive towards solutions that can be accepted by the project's committer community - ideally by consensus, and if necessary, a vote. 

A primary reason that SIGs exist is as forums for collaboration. Much work in a SIG should stay local within that SIG. However, SIGs must communicate in the open, ensure other SIGs and community members can find notes of meetings, discussions, designs, and decisions, and periodically communicate a high-level summary of the SIG's work to the community.

# SIG Roles

## SIG Lead

- Membership tracked in [sigs.yaml](./sigs.yaml)
- MUST be a reviewer of one or more areas of the project, and should be a subject matter expert in their SIG area.
- MUST ensure notes are made available.
- MUST organize a method of keeping cadence (meetings, async channel in Cilium Slack, etc.), and make sure [sigs.yaml](./sigs.yaml) is up to date.
- SHOULD facilitate cadence but MAY delegate to other members or future Leads/Leads in training.
- SHOULD drive charter changes (including creation) to get community buy-in but MAY delegate content creation to SIG contributors.
- MAY delegate communication and note taking to other contributors in the same SIG where appropriate.

### Requirements
Leads MUST be at least a "reviewer" on our [contributor ladder](https://github.com/cilium/community/blob/main/CONTRIBUTOR-LADDER.md#reviewer) to be eligible to hold a leadership role within a SIG.
SIGs MAY prefer various levels of domain knowledge depending on the role. This should be documented.

### On-boarding and Off-boarding Leads
Leads MAY decide to step down at anytime and propose a replacement. Use lazy consensus amongst the other Leads with fallback on majority vote to accept the proposal. The candidate SHOULD be supported by a majority of SIG contributors (active members of the Cilium organization engaged with creation and reviews in the scope of the SIG).
Leads MAY nominate additional Leads for a SIG, or MAY choose to step down at any time. The change SHOULD be supported by a majority of SIG contributors (active members of the Cilium organization engaged with creating and reviweing changes within the SIG). All changes to SIG leadership MUST be conducted in consultation with the Committer group. 

## Other Roles
This governance document outlines the required roles for SIGs; however, SIGs are allowed to operate how they see fit outside of minimum governance requirements, including defining more roles to sustain the group. If a SIG needs to change the Lead position to include or remove duties, this needs to be approved by the Committers. Newly created roles that don't assume any responsibility of Leads should follow the governing processes in the SIG's charter.

# SIG Creation

## Goals
The primary goal of the charters is to define the scope of the SIG within Cilium and how the SIG leaders exercise ownership of these areas by taking care of their responsibilities. SIG Leads and SIGs are responsible for reviewing CFPs in their focus area, and have a responsibility to bring concerns to Committers if they are unsure. 

### SIG Charter Guide
All Cilium SIGs must define a charter defining the scope and governance of the SIG.
The scope must define what areas the SIG is responsible for directing and maintaining.
The governance must outline the responsibilities within the SIG as well as the roles owning those responsibilities.

### Steps to create a SIG charter
1. Copy the [template](./sig-TEMPLATE/charter.md) into a new file under community/sig-YOURSIG/charter.md
1. Read the recommendations and requirements so you have context for the template
1. Fill out the template for your SIG
1. Update sigs.yaml with the individuals holding the roles as defined in the template.
1. Create a pull request with a draft of your charter.md and sigs.yaml changes. Communicate it within your SIG and get feedback as needed.
1. Send the SIG Charter out for review to the Cilium Committers.
1. Once accepted, the Committers will ratify the PR by merging it.

### Steps to update an existing SIG charter
For significant changes, or any changes that could impact other SIGs, such as the scope, create a PR and send it to the Committers for review with the subject: "SIG Charter Update: YOURSIG".
For minor updates to that only impact issues or areas within the scope of the SIG the SIG Leads should facilitate the change.

### SIG Charter approval process
When introducing a SIG charter or modification of a charter the following process should be used.

1. Identify a small set of people from the SIG to drive the changes. Most typically this will be the SIG Leads.
1. Work with the rest of the SIG in question to craft the changes. Make sure to keep the SIG in the loop as discussions progress with the Committers.
1. Work with the Committers to gain approval. This can simply be submitting a PR and sending a slack message. If more substantial changes are desired it is advisable to socialize those before drafting a PR, for instance by connecting with a committer to act as a mentor and sponsor for this process.
1. The Committers will be looking to ensure the scope of the SIG as represented in the charter is reasonable (and within the scope of Cilium) and that processes are fair.

# SIG Governance
To standardize SIGs efforts, create maximum transparency, and route contributors to the appropriate SIG, SIGs should follow these guidelines:

- Have an approved Charter.
- Keep up-to-date meeting notes, linked from the SIG's page in the community repo.
- Ensure related work happens in a project-owned GitHub org and repository.
- Use the forums (in order of preference: GitHub, Slack, recorded group meetings) provided as the primary means of working, communicating, and collaborating, as opposed to private emails and meetings.
- Track and identify all CFPs and other project enhancements related to the SIG area.

## SIG Retirement
In the event that the SIG is inactive 
- after 3 or more months it SHOULD be retired
- after 6 or more months it MUST be retired
SIGs could be dissolved in the future if needed (for example, counter-productive, contradiction with Cilium Code of Conduct) at the discretion of the Committers.
