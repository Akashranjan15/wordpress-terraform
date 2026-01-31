# WordPress on AWS using Terraform

## Overview
This project provisions a WordPress website on an EC2 instance and connects it to a MySQL database hosted on Amazon RDS using Terraform.

## Architecture
- EC2: Hosts Apache, PHP, and WordPress
- RDS MySQL: Backend database (private)
- Security Groups: Restrict DB access to EC2 only

## Deployment
```bash
terraform init
terraform plan
terraform apply
```



