# Repositories

This document lists all repositories, sorted by their scope, within [Cilium](https://github.com/cilium).

You can read more about the scope and lifecycle of repositories in [REPOSITORY-GUIDELINES.md](https://github.com/cilium/community/blob/main/REPOSITORY-GUIDELINES.md).

**Table of Contents**

* [```Core``` Scope](#core-scope)
* [```Ecosystem``` Scope](#ecosystem-scope)
* [```Historical``` Scope](#historical-scope)

## ```Core``` Scope

Learn more about the ```Core``` scope in [REPOSITORY-GUIDELINES.md](https://github.com/cilium/community/blob/main/REPOSITORY-GUIDELINES.md#core).

|   Name  | Description |
|:--------|:------------|
| [cilium/charts](https://github.com/cilium/charts) | Helm charts repository for the Cilium project |
| [cilium/cilium](https://github.com/cilium/cilium) | eBPF-based Networking, Security, and Observability |
| [cilium/cilium-cli](https://github.com/cilium/cilium-cli) | CLI to install, manage & troubleshoot Kubernetes clusters running Cilium |
| [cilium/cilium.io](https://github.com/cilium/cilium.io) | Cilium project website |
| [cilium/ebpf](https://github.com/cilium/ebpf) | A Go library to read, modify and load eBPF programs and attach them to various hooks in the Linux kernel |
| [cilium/hubble](https://github.com/cilium/hubble) | Network, Service & Security Observability for Kubernetes using eBPF |
| [cilium/hubble-ui](https://github.com/cilium/hubble-ui) | User interface for [cilium/hubble](https://github.com/cilium/hubble)
| [cilium/pwru](https://github.com/cilium/pwru) | eBPF-based Linux kernel networking debugger |
| [cilium/tetragon](https://github.com/cilium/tetragon) | eBPF-based Security Observability and Runtime Enforcement |

## ```Ecosystem``` Scope

Learn more about the ```Ecosystem``` scope in [REPOSITORY-GUIDELINES.md](https://github.com/cilium/community/blob/main/REPOSITORY-GUIDELINES.md#ecosystem).

|   Name  | Description |
|:--------|:------------|
| [cilium/actions-app-token](https://github.com/cilium/actions-app-token) | A fork to impersonate a GitHub App Token inside Actions |
| [cilium/affinity-test-apps](https://github.com/cilium/affinity-test-apps) | Apps to test connection affinity with load-balancing endpoint updates |
| [cilium/alpine-curl](https://github.com/cilium/alpine-curl) | Container image for curl client |
| [cilium/api](https://github.com/cilium/api) | A fork of API definitions for the Istio project |
| [cilium/api-router](https://github.com/cilium/api-router) | Simple HTTP API router |
| [cilium/arping](https://github.com/cilium/arping) | Go Library to ping a host per arp datagram or query a host mac address |
| [cilium/busybox](https://github.com/cilium/busybox) | Tiny versions of many common UNIX utilities into a single small executable |
| [cilium/bpf-ci-scripts](https://github.com/cilium/bpf-ci-scripts) | Test BPF trees with Jenkins |
| [cilium/certgen](https://github.com/cilium/certgen) | A tool to generate and store certificates for Hubble Relay mTLS |
| [cilium/chaos-monkeys](https://github.com/cilium/chaos-monkeys) | Base infrastructure plus collection of tests to assist in chaos testing |
| [cilium/chaos-testing-examples](https://github.com/cilium/chaos-testing-examples) |Examples of using Cilium for chaos testing and fault injection |
| [cilium/checkmate](https://github.com/cilium/checkmate) | A fork for testing the Go language |
| [cilium/ci-kernels](https://github.com/cilium/ci-kernels) | A collection of kernels used for CI builds |
| [cilium/cilium-l4lb-test](https://github.com/cilium/cilium-l4lb-test) | Scripts to test Cilium's L4LB |
| [cilium/cilium-perf-networking](https://github.com/cilium/cilium-perf-networking) | Utilities for Cilium networking performance evaluation |
| [cilium/cilium-perf-test](https://github.com/cilium/cilium-perf-test) | Cilium performance testing and evaluation | 
| [cilium/client-example](https://github.com/cilium/client-example) | Cilium API example as linked to in the [Cilium docs](https://docs.cilium.io/en/```STABLE```/api/) |
| [cilium/client-go](https://github.com/cilium/client-go) | A fork of Kubernetes Go client |
| [cilium/clustermesh-tools](https://github.com/cilium/clustermesh-tools) | Tooling to set up a cluster mesh |
| [cilium/community](https://github.com/cilium/community) | Community content around Cilium |
| [cilium/connectivity-container](https://github.com/cilium/connectivity-container) | A basic container with a simple golang HTTP server and with curl packaged in |
| [cilium/controller-tools](https://github.com/cilium/controller-tools) | A fork of Kubernetes controller-tools |
| [cilium/coverbee](https://github.com/cilium/coverbee) | Code coverage tooling for eBPF |
| [cilium/delayed-httpd](https://github.com/cilium/delayed-httpd) | Delayed HTTP Dockerfile |
| [cilium/deepequal-gen](https://github.com/cilium/deepequal-gen) | A fork based on the Kubernetes deepcopy-gen tool |
| [cilium/demo-image](https://github.com/cilium/demo-image) | Docker container image for demos |
| [cilium/design-cfps](https://github.com/cilium/design-cfps) | Cilium Feature Proposal (CFP) design docs |
| [cilium/dns](https://github.com/cilium/dns) | Forked DNS library in Go |
| [cilium/dnssec-client](https://github.com/cilium/dnssec-client) | Small utility for testing dnsec entries |
| [cilium/docker-bind](https://github.com/cilium/docker-bind) | Docker Bind9 container for testing purposes |
| [cilium/docker-m2r](https://github.com/cilium/docker-m2r) | Forked docker image for [m2r](https://github.com/miyakogi/m2r) |
| [cilium/docsearch-scraper-webhook](https://github.com/cilium/docsearch-scraper-webhook) | DocSearch scraper used to power the hosted version of DocSearch |
| [cilium/dummylb](https://github.com/cilium/dummylb) | Dummy k8s LB used for testing |
| [cilium/echoserver](https://github.com/cilium/echoserver) | A fork of [k8s.gcr.io/echoserver](https://console.cloud.google.com/gcr/images/k8s-artifacts-prod/US/echoserver) |
| [cilium/echoserver-udp](https://github.com/cilium/echoserver-udp) | Container image serving a dynamic TFTP page similar to [cilium/echoserver](https://github.com/cilium/echoserver) |
| [cilium/endpointslice](https://github.com/cilium/endpointslice) | A fork of the upstream endpoint of k8s endpointslice |
| [cilium/endpointslice-controller](https://github.com/cilium/endpointslice-controller) | A fork of k8s endpointslice controller pkg |
| [cilium/fake](https://github.com/cilium/fake) | A Go library to generate random data for testing and/or performance evaluation |
| [cilium/github-actions](https://github.com/cilium/github-actions) | GitHub actions logic executed in [cilium/cilium](https://github.com/cilium/cilium) | 
| [cilium/go-bindata](https://github.com/cilium/go-bindata) | Converts any file into managable Go source code |
| [cilium/go-deadlock](https://github.com/cilium/go-deadlock) | Forked deadlock detection in Go |
| [cilium/.github](https://github.com/cilium/.github) | README for the Cilium GitHub org |
| [cilium/graceful-termination-test-apps](https://github.com/cilium/graceful-termination-test-apps) | Apps to test graceful termination |
| [cilium/health-examples](https://github.com/cilium/health-examples) | Contains examples on how to use Cilium's LB health datapath |
| [cilium/helm-docs](https://github.com/cilium/helm-docs) | Forked tool for automatically generating markdown documentation for helm charts |
| [cilium/helm-gh-pages-action](https://github.com/cilium/helm-gh-pages-action) | Forked GitHub Action to package and deploy your Helm charts to GitHub Pages |
| [cilium/helm-toolbox](https://github.com/cilium/helm-toolbox) | External tools for linting helm charts and generating documentation |
| [cilium/hive](https://github.com/cilium/hive) | Dependency injection framework for Go |
| [cilium/hubble-export-stdout](https://github.com/cilium/hubble-export-stdout) | Export Hubble data to stdout |
| [cilium/identity-scale-test](https://github.com/cilium/identity-scale-test) | Dockerfile for identity scale test |
| [cilium/image-tools](https://github.com/cilium/image-tools) | Dockerfiles for cilium-runtime and cilium-builder dependencies |
| [cilium/ingress-controller-conformance](https://github.com/cilium/ingress-controller-conformance) | A fork of Kubernetes ingress-controller-conformance |
| [cilium/ipam](https://github.com/cilium/ipam) | A fork of k8s.io/kubernetes/pkg/registry/core/service package |
| [cilium/json-mock](https://github.com/cilium/json-mock) | Simple container image for json-server to mock REST/JSON APIs |
| [cilium/kafka](https://github.com/cilium/kafka) | Forked Go driver for [Kafka](https://kafka.apache.org/) |
| [cilium/kernel-bpf-ci](https://github.com/cilium/kernel-bpf-ci) | A fork of BPF CI for testing & development |
| [cilium/k8s-iptables-diagram](https://github.com/cilium/k8s-iptables-diagram) | Diagram of Kubernetes / kube-proxy iptables rules architecture |
| [cilium/kube-apate](https://github.com/cilium/kube-apate) | Emulate Kubernetes using [Apate](https://apatekubernetes.nl/) |
| [cilium/kubectl-image](https://github.com/cilium/kubectl-image) | Kubectl container image |
| [cilium/kustomize-bases](https://github.com/cilium/kustomize-bases) | A collection of kustomize bases used for demos |
| [cilium/linters](https://github.com/cilium/linters) | Static analyzers for the Go programing language |
| [cilium/linux](https://github.com/cilium/linux) | A fork of local BPF wip branches for upstream | 
| [cilium/little-vm-helper](https://github.com/cilium/little-vm-helper) | A tool for building and running VMs for development and testing |
| [cilium/little-vm-helper-images](https://github.com/cilium/little-vm-helper-images) | little-vm-helper files for building kernel and rootfs images |
| [cilium/log-gatherer](https://github.com/cilium/log-gatherer) | Log-gatherer Dockerfile used by Cilium CI testing | 
| [cilium/lumberjack](https://github.com/cilium/lumberjack) | Forked log rolling package for Go |
| [cilium/metallb](https://github.com/cilium/metallb) | Forked network load balancer for Kubernetes using standard routing protocols |
| [cilium/misc-scripts](https://github.com/cilium/misc-scripts) | Misc netperf scripts |
| [cilium/mock-hubble](https://github.com/cilium/mock-hubble) | A mock implementation of Hubble API |
| [cilium/m2r](https://github.com/cilium/m2r) | Forked markdown to reStructuredText converter |
| [cilium/netlink](https://github.com/cilium/netlink) | Forked netlink library for Go |
| [cilium/netperf](https://github.com/cilium/netperf) | Netperf related tooling for CI |
| [cilium/networkpolicy](https://github.com/cilium/networkpolicy) | Network policy tutorials |
| [cilium/openapi](https://github.com/cilium/openapi) | A fork of OpenAPI spec renderer for Sphinx |
| [cilium/packer-ci-build](https://github.com/cilium/packer-ci-build) | Contains the scripts and data for building the Cilium CI testing VM |
| [cilium/perf-tests](https://github.com/cilium/perf-tests) | A fork of Kubernetes performance tests |
| [cilium/proxy](https://github.com/cilium/proxy) | Envoy proxy with Cilium policy enforcement filters |
| [cilium/python-bmemcached](https://github.com/cilium/python-bmemcached) | Dockerfile for python-binary-memcached |
| [cilium/redhat-marketplace-operators](https://github.com/cilium/redhat-marketplace-operators) | A fork of the production catalog for Red Hat Marketplace Operator Bundles |
| [cilium/release](https://github.com/cilium/release) | Generates release notes for Cilium releases |
| [cilium/reusable-workflows](https://github.com/cilium/reusable-workflows) | Reusable Github Action workflows |
| [cilium/scaffolding](https://github.com/cilium/scaffolding) | A framework for writing simple scripts to execute performance benchmarks |
| [cilium/scale-tests-action](https://github.com/cilium/scale-tests-action) | GitHub Actions used for executing scale tests | 
| [cilium/scruffy](https://github.com/cilium/scruffy) | Utility to garbage collect docker image tags from quay.io |
| [cilium/sphinx_rtd_theme](https://github.com/cilium/sphinx_rtd_theme) | A fork of the Sphinx Theme from [readthedocs.org](https://about.readthedocs.com/) |
| [cilium/stale-rules](https://github.com/cilium/stale-rules) | A tool to detect and remove stale routing rules |
| [cilium/statedb](https://github.com/cilium/statedb) | Dockerfiles for cilium-runtime and cilium-builder dependencies |
| [cilium/starwars-docker](https://github.com/cilium/starwars-docker) | Deathstar as a Service |
| [cilium/star-wars-demo](https://github.com/cilium/star-wars-demo) | Star Wars themed demo including HTTP policy enforcement |
| [cilium/star-wars-demo-automated](https://github.com/cilium/star-wars-demo-automated) | Star Wars themed automated demo |
| [cilium/state-writer](https://github.com/cilium/state-writer) | Restore endpoint state from API and write to disk |
| [cilium/stream](https://github.com/cilium/stream) | A reactive streams library for Go |
| [cilium/team-manager](https://github.com/cilium/team-manager) | Bot to manage team members in GitHub organizations |
| [cilium/test-connection-disruption](https://github.com/cilium/test-connection-disruption) | Test connections during Cilium upgrades |
| [cilium/testing-recipes](https://github.com/cilium/testing-recipes) | Collection of testing recipes and playgrounds for manual testing |
| [cilium/testing-repository](https://github.com/cilium/testing-repository) | Used for testing GH features |
| [cilium/tetragon-testdata](https://github.com/cilium/tetragon-testdata) | Test data for [cilium/tetragon](https://github.com/cilium/tetragon) |
| [cilium/vmtest](https://github.com/cilium/vmtest) | A fork of vmtest, an upstream kernel BPF CI |
| [cilium/workerpool](https://github.com/cilium/workerpool) | A Go package to run tasks concurrently with limits |
| [cilium/xdp-config](https://github.com/cilium/xdp-config) | XDP troubleshooting documents |

## ```Historical``` Scope

Learn more about the ```Historical``` scope in [REPOSITORY-GUIDELINES.md](https://github.com/cilium/community/blob/main/REPOSITORY-GUIDELINES.md#historical).

|   Name  | Description |
|:--------|:------------|
| [cilium/bpf-map](https://github.com/cilium/bpf-map) | Generic tool to inspect BPF maps |
| [cilium/cilium-etcd-operator](https://github.com/cilium/cilium-etcd-operator) | Operator to manage Cilium's etcd cluster |
| [cilium/cilium-olm](https://github.com/cilium/cilium-olm) | Cilium packaging for OpenShift |
| [cilium-service-mesh-beta](https://github.com/cilium/cilium-service-mesh-beta) | Instructions and issue tracking for Service Mesh capabilities of Cilium |
| [cilium/cilium-sysdump](https://github.com/cilium/cilium-sysdump) | Tool to collect system information to troubleshoot Cilium & Hubble related issues |
| [cilium/clustermesh-apiserver](https://github.com/cilium/clustermesh-apiserver) | API server for ClusterMesh |
| [cilium/customvet](https://github.com/cilium/customvet) | Custom Go Vet tool for the Cilium Repository |
| [cilium/ebpf.io-summit](https://github.com/cilium/ebpf.io-summit) | Pixel Point Gatsby Starter |
| [cilium/gke](https://github.com/cilium/gke) | Guide & scripts for deploying Cilium on GKE |
| [cilium/installfest](https://github.com/cilium/installfest) | Documentation and resources for Cilium Installfest |
| [cilium/k8s-1abel](https://github.com/cilium/k8s-1abel) | Kubernetes YAML/JSON survival kit |
| [cilium/little-vm-helper-action](https://github.com/cilium/little-vm-helper-action) | Archived version of [cilium/little-vm-helper](https://github.com/cilium/little-vm-helper) |
| [cilium/microscope](https://github.com/cilium/microscope) | Gather monitor data data from all cilium nodes in your cluster (See: [Hubble](https://github.com/cilium/hubble/]))|
| [cilium/old_pilot_repo](https://github.com/cilium/old_pilot_repo) | Deprecated home of Istio's Pilot, now in istio/istio's pilot dir |
| [cilium/openshift-terraform-upi](https://github.com/cilium/openshift-terraform-upi) | OpenShift UPI Terraform module for Cilium |
| [cilium/terraform-gke-management-cluser](https://github.com/cilium/terraform-gke-ci-management-cluster) | Terraform module for GKE CI management cluster |
| [cilium/ubuntu-curl](https://github.com/cilium/ubuntu-curl) | Container image for curl client |



