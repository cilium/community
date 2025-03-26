# SIG Scalability
## Scope
SIG Scalability is responsible for defining, evaluating, and enhancing Cilium’s scalability. We collaborate with other SIGs to optimize the overall system scalability and performance and drive architectural changes to support these efforts. Additionally, we identify bottlenecks and potential scalability regressions. We also provide guidance and consulting to other SIGs on scalability and performance topics that fall under their charters.

### In scope
**Code, Binaries and Services**
- Developing and maintaining scalability tests and infrastructure of Cilium
- Monitoring scalability, performance metrics, and resource footprint of Cilium
- Identifying and coordinating fixes of performance regressions with other SIGs
- Consulting and providing guidance for other SIGs related to scalability and performance of Cilium

- Some focus areas include but not limited to : 
    - Cilium Control Plane Scalability
    - Scalability of Cross Cluster Solutions like Clustermesh, KVStoreMesh and MCS API
    - Scalability of Identity Allocation Backends
    - Garbage collection mechanisms
    - Resource utilization of Cilium

**Cross-cutting and Externally Facing Processes**
- Reviewing performance metrics before major releases
- Reviewing changes from other subsystems that can impact control plane scalability. Adding new watchers for example.

### Out of scope
- BGP
- Cloud Provider APIs
- StateDB