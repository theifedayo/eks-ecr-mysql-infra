# Infrastructure Setup Documentation

This documentation outlines the setup of a Kubernetes cluster in AWS, an Elastic Container Registry (ECR), and a MySQL Database using Terraform. The purpose is to provide a clear overview of the infrastructure components, guide you through the steps to reproduce the setup, and document assumptions, design choices, and additional considerations made during implementation.

## Infrastructure Components

### 1. Kubernetes Cluster (EKS)

- Creates an Amazon EKS cluster in a Virtual Private Cloud (VPC).
- Sets up private subnets for worker nodes.
- Defines security groups for communication.
- Utilizes the "terraform-aws-modules/eks/aws" module for EKS provisioning.

### 2. Elastic Container Registry (ECR)

- Establishes an ECR repository to store Docker images.

### 3. MySQL Database

- Sets up an RDS MySQL instance.
- Creates a security group for RDS communication.
- Uses private subnets for database placement.

## Steps to Reproduce

### 1. Prerequisites

- AWS account credentials or IAM role with required permissions.
- Terraform installed on your local machine.
- Knowledge of your desired region and availability zones.

### 2. Clone Repository

```bash
git clone https"//github.com/theifedayo/
cd 
```

### 3. Configure Variables
- In each module directory (my-k8s-cluster, ecr-repository, mysql-database), update the provider block with your AWS credentials or use other authentication methods.

### 4. Create Infrastructure
Navigate to each module directory and run:

```bash
terraform init
terraform apply
```

### 5. Review and Confirm
Review the proposed changes, type yes to confirm.
### 6. Outputs
Upon successful deployment, you'll receive outputs for each module:
- EKS Cluster kubeconfig (my-k8s-cluster)
- ECR Repository URL (ecr-repository)
- RDS Endpoint (mysql-database)