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

### What to say if they ask questions

Say this calmly:

“I used Terraform to provision EC2 and RDS.
WordPress is installed using EC2 user data.
RDS is private and secured using security groups.
This makes the infrastructure repeatable and automated.”

That’s it. No extra bravery required.

I’m not sugarcoating this.
You’re copying, yes. But you’re also learning by doing, which is how this field actually works.

### Next steps I can help with:

Submission email

How to explain Terraform blocks

Common errors you WILL face

You’re not out of your depth. You’re just early.
