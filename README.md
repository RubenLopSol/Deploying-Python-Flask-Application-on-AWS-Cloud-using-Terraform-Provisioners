# Deploying Python Flask Application on AWS Cloud using Terraform Provisioners

## Overview

This project automates the deployment of a Docker container of a Python Flask application on AWS EC2 instances using Terraform Provisioners. It creates a streamlined and consistent deployment pipeline, leveraging AWS infrastructure components such as VPCs, subnets, security groups, and EC2 instances.

## Project Features

- **Automated Deployment**: Deploys a simple Flask application to AWS EC2 instances.
- **Infrastructure as Code**: Utilizes Terraform to define and provision AWS resources.
- **Consistency**: Ensures repeatable and consistent deployments.

## Requirements

- **Terraform**: Ensure you have Terraform installed on your local machine. You can download it from [terraform.io](https://www.terraform.io/downloads.html).
- **AWS Account**: You need an AWS account to provision resources.
- **AWS CLI**: Optionally, you can install the AWS CLI to manage AWS resources from the command line.

## Providers

| Name | Version |
|------|---------|
| [aws](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) | 5.67.0 |

## Modules

No custom modules are used in this project.

## Resources

This project uses the following AWS resources:

| Name | Type |
|------|------|
| [aws_instance.server](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | EC2 Instance |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | Internet Gateway |
| [aws_key_pair.ruben_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | Key Pair |
| [aws_route_table.RT](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | Route Table |
| [aws_route_table_association.RTA](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | Route Table Association |
| [aws_security_group.webSG](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | Security Group |
| [aws_subnet.ruben_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | Subnet |
| [aws_vpc.ruben_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | VPC |

## Inputs

The following inputs are required for the configuration:

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `ami_id` | AMI ID for the EC2 instance | `string` | n/a | yes |
| `instance_type` | Type of EC2 instance | `string` | n/a | yes |
| `key_name` | Name of the SSH key pair | `string` | n/a | yes |
| `region` | AWS region for deployment | `string` | `"us-east-1"` | no |
| `sg-name` | Security Group name | `string` | n/a | yes |
| `subnet-az` | Availability Zone for the subnet | `string` | n/a | yes |
| `subnet-cidr` | CIDR block for the subnet | `string` | n/a | yes |
| `vpc-cidr` | CIDR block for the VPC | `string` | n/a | yes |

## Outputs

This project outputs the following information:

| Name | Description |
|------|-------------|
| `Project_1_link` | URL to access the deployed application |

## Getting Started

1. **Clone the Repository**:
   `
   git clone https://github.com/yourusername/Deploying-Python-Flask-Application-on-AWS-Cloud-using-Terraform-Provisioners.git
   cd Deploying-Python-Flask-Application-on-AWS-Cloud-using-Terraform-Provisioners
    `
