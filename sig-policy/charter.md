# SIG Policy

## Scope
SIG Policy is responsible for defining, maintaining, and evolving network policy and security policy capabilities in Cilium. We ensure that Cilium provides a powerful, consistent, and user-friendly policy model across Kubernetes, VMs, and cloud environments.  

Our work includes driving improvements to policy APIs, managing lifecycle and compatibility, and ensuring that policy enforcement is reliable and performant. We collaborate with other SIGs to integrate policy with observability, scalability, and networking features.

## In scope

### Code, Binaries and Services
- Developing and maintaining Cilium Network Policy (CNP), Cilium Clusterwide Network Policy (CCNP), and related APIs  
- Defining and evolving security policy semantics for workloads across clusters and platforms  
- Ensuring compatibility and conformance with Kubernetes Network Policy (KNP)  
- Policy enforcement mechanisms in the datapath  
- Testing and monitoring policy performance and reliability  

### Focus Areas
- Identity-based policy  
- Layer 7 policy enforcement  
- Policy distribution and scalability across clusters 
- Enhancements to policy APIs for expressiveness and usability

## Out of scope
- Core datapath features unrelated to policy enforcement
- Authentication and authorization systems outside of network and security policy
- Defining or enforcing organizational security policies for the project
