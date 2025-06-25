# terraform-for-iac
Here is a list of prerequisites for setting up an Amazon EKS cluster:

Prerequisites for Amazon EKS Cluster Setup
==========================================

AWS Account and Permissions
===========================

An AWS account with sufficient permissions to create EKS clusters and related resources (VPC, IAM, EC2, etc.).

An IAM principal (user or role) with permissions to create and manage EKS clusters.

Networking
==========

VPC: An existing Virtual Private Cloud (VPC) in your AWS account.

Subnets: At least two subnets in different Availability Zones (AZs) that meet EKS requirements:

Each subnet must have at least 6 available IP addresses (AWS recommends at least 16).

Subnets can be public or private, but private subnets are recommended for worker nodes.

Subnets must have correct route tables for internet access (public subnets: route to internet gateway; private subnets: route to NAT gateway).

No Outposts/Wavelength: Subnets cannot be in AWS Outposts or AWS Wavelength for the EKS control plane (nodes can be self-managed there if needed).

IAM Roles and Policies
======================

Cluster Role: An IAM role for the EKS cluster with the AmazonEKSClusterPolicy attached.

Node Group Role: An IAM role for worker nodes with policies like AmazonEKSWorkerNodePolicy, AmazonEKS_CNI_Policy, and AmazonEC2ContainerRegistryReadOnly.

Command Line Tools
==================

AWS CLI: Installed and configured (version 2.12.3 or later, or 1.27.160 or later).

kubectl: Installed to interact with your Kubernetes cluster (version compatible with your EKS cluster).

eksctl (optional): Useful for advanced cluster management (not required for Terraform or AWS CLI setups).

Key Pair (Optional)

SSH Key Pair: Required only if you want SSH access to worker nodes (must exist in the same region as your cluster).

Additional Considerations

Security Groups: Ensure security groups allow communication between worker nodes and the EKS control plane.

Resource Limits: Ensure you are not hitting AWS service limits (e.g., VPCs, subnets, EC2 instances).

Region and Availability Zones: Use supported regions and avoid disallowed AZs for EKS clusters.

