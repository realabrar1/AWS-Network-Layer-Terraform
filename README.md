# AWS Network Layer with Terraform

This repository contains Terraform code to deploy a basic AWS network layer, including a Virtual Private Cloud (VPC) and associated subnets.

## Architecture Overview

![Architectural_Diagram](https://github.com/Naganathan05/AWS-Network-Layer-with-Terraform/assets/116747452/a6b553fe-4e9f-4a4c-946d-9cffce7106ec)

## Steps Undergone

- **VPC Configuration:** Define a customizable VPC with specific CIDR blocks.
- **Subnets:** Create public subnets distributed across multiple availability zones.
- **Internet Gateway:** Attach an Internet Gateway for public subnet internet access.
- **Customization:** Easily customize parameters such as CIDR blocks, subnet sizes, and availability zones.
- **Application Load Balancer:** Balances the inbound traffic accross multiple servers deployed accross multiple availability zones.
- **Terraform Best Practices:** Follows best practices for Terraform, including modularization and variable usage.

## Get it Local:

1. Clone the repository:

    ```bash
    git clone https://github.com/Naganathan05/AWS-Network-Layer-with-Terraform.git
    ```
