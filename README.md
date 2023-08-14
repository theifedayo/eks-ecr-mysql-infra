# Infrastructure Setup Documentation

This documentation outlines the setup of a Kubernetes cluster in AWS, an Elastic Container Registry (ECR), and a MySQL Database using Terraform. The purpose is to provide a clear overview of the infrastructure components, guide you through the steps to reproduce the setup, and document assumptions, design choices, and additional considerations made during implementation.

## Infrastructure Components

### - Kubernetes Cluster (EKS)

- Creates an Amazon EKS cluster in a Virtual Private Cloud (VPC).
- Sets up private subnets for worker nodes.
- Defines security groups for communication.
- Utilizes the "terraform-aws-modules/eks/aws" module for EKS provisioning.

### - Elastic Container Registry (ECR)

- Establishes an ECR repository to store Docker images.

### - MySQL Database

- Sets up an RDS MySQL instance.
- Creates a security group for RDS communication.
- Uses private subnets for database placement.

## Steps to Reproduce

### 1. Prerequisites

- AWS account credentials or IAM role with required permissions.
- Terraform installed on your local machine.

### 2. Set AWS Environment Variables

- Export your AWS credentials as environment variables:
  ```bash
  export AWS_ACCESS_KEY_ID=your_access_key
  export AWS_SECRET_ACCESS_KEY=your_secret_key
  ```

### 3. Clone Repository

```bash
git clone https://github.com/theifedayo/eks-ecr-mysql-infra
cd eks-ecr-mysql-infra
```

### 4. Configure Variables
- In each module directory (my-k8s-cluster, ecr-repository, mysql-database), update the provider block with your AWS credentials or use other authentication methods.

### 5. Create Infrastructure
Navigate to each module directory and run:

```bash
terraform init
terraform apply
```

### 6. Review and Confirm
Review the proposed changes, type yes to confirm.

### 7. Outputs
Upon successful deployment, you'll receive outputs for each module:
- EKS Cluster kubeconfig (my-k8s-cluster)
- ECR Repository URL (ecr-repository)
- RDS Endpoint (mysql-database)

## Assumptions, Design Choices, and Considerations:
- VPC Configuration: The setup assumes the use of a single VPC for simplicity. In a production scenario, I would consider VPC peering or other network configurations for more advanced networking requirements.

- Security Group Granularity: The design includes separate security groups for EKS, ECR, and RDS instances to control network access with finer granularity.

- Credentials Management: The AWS credentials are managed using environment variables for access and secret keys.

- Customization: The code provided offers a basic setup. For a production environment, I would consider customizing instance types, storage sizes, backup strategies, and other parameters based on my application requirements.

- High Availability: For high availability, I may need to consider multi-AZ configurations, automatic scaling, and redundancy.

- Security and IAM: This setup does not cover advanced security considerations, IAM roles, or user/group permissions.

- Networking and DNS: The setup does not cover domain configuration, DNS resolution, or other advanced networking components.

