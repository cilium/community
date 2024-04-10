# Cilium project direction, vision and scope

[Cilium](https://cilium.io) is an open source, cloud native solution for providing connectivity, security, and observability using eBPF. The vision of Cilium is to seamlessly connect and secure workloads wherever those workloads are running, across different types of infrastructure such as public cloud, hybrid cloud, on-premise environments, edge, and serverless. Cilium’s scope encompasses connectivity, security and observability from Layer 2 to Layer 7, and includes providing observability and security diagnostic information for Cilium users, as well as supporting libraries and debugging tools to help users operating Cilium and developers working on the Cilium project.

While Cilium’s architecture is geared to be aligned with modern orchestration systems such as Kubernetes, the project scope includes providing connectivity and runtime security for all sorts of workloads including other container orchestration systems, virtual machines, physical servers, and arbitrary network endpoints. The goal is to abstract and decouple connectivity, security, and observability from the underlying infrastructure to achieve reduced complexity, increased portability, and simplified operations. Cilium’s scope includes open source solutions for the control and data planes for these capabilities.

Cilium’s key differentiator and unique advantage is its innovative use of [eBPF](https://ebpf.io) technology, but where a particular functionality is not yet implemented in eBPF, other technologies are utilized. This includes integrating with other open source cloud native components for handling specialized functionality.

The Cilium project aims to serve the needs of users from platform engineering,
network operations, security, and application development teams by providing:

* A universal, high-performance network layer with strong security and
  troubleshooting capabilities that behaves the same regardless of the
  infrastructure on which it runs
* Security-centric visibility, and security controls for network and runtime behavior
* Application layer controls such as load-balancing, protocol visibility, and traffic management operations