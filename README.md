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
terraform apply
```

### Access
Use the output URL to access the WordPress setup page.

---

## 🚀 How YOU actually run this
1. Create EC2 key pair in AWS
2. Clone your GitHub repo
3. Create `terraform.tfvars`
```hcl
key_name    = "your-key-name"
db_username = "admin"
db_password = "StrongPassword123!"
```

Run:
```bash
terraform init
terraform apply
```

Open the output URL
WordPress setup page appears = success

