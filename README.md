# infra-aws-airgap
This repository provides a **production-grade AWS infrastructure** built with **Terraform** to serve as the underlying foundation for deploying Kubernetes using the **k8s-airgap-installer** project.

The goal of this repository is to provision a **secure, isolated, and reproducible AWS environment** that closely resembles real-world air-gapped or restricted-network deployments, on top of which Kubernetes can be installed and operated without direct internet access.

## Relationship to k8s-airgap-installer

This infrastructure is intentionally designed to support the Kubernetes installation workflow implemented in the **k8s-airgap-installer** repository.

- This repo: **Infrastructure layer**
  - VPC, subnets, routing
  - Bastion host access
  - Security groups and IAM boundaries
  - Private, non-internet-facing compute resources

- k8s-airgap-installer: **Platform layer**
  - Offline Kubernetes bootstrap
  - Container image and package mirroring
  - Cluster initialization and configuration

By separating infrastructure provisioning from platform installation, the design follows **clear separation of concerns**, enabling repeatable and auditable deployments.

## Key Characteristics

- Private subnets with **no direct internet egress**
- Bastion-based or SSM-based administrative access
- No public IPs on Kubernetes nodes
- Least-privilege security group and IAM design
- Modular Terraform structure with environment isolation
- Remote Terraform state with locking
- GitOps-ready layout with CI validation

## Architecture Overview

The architecture mirrors environments commonly used in:
- Defense and government systems
- Regulated enterprise platforms
- Air-gapped or semi-disconnected Kubernetes clusters

The infrastructure provisions only what is required for Kubernetes installation and operation, avoiding unnecessary exposure while maintaining operational access via controlled entry points.

## Goals of This Project

- Provide a reproducible AWS foundation for air-gapped Kubernetes
- Complement the k8s-airgap-installer project with a clean infra layer
- Demonstrate real-world Terraform and cloud security practices
- Serve as a portfolio-grade reference for DevOps / Platform roles

## Future Enhancements

- Tight integration examples with k8s-airgap-installer
- Offline YUM/APT repositories and private OCI registry
- Multi-node Kubernetes control plane and worker pools
- Advanced observability and audit logging
