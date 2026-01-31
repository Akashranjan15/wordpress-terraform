variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
  sensitive = true
}
