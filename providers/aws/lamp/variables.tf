variable "region" {
  type = string
  default = "us-east-1"
}

variable "account_id" {
  type = string
  default = "<account_id>"
}

variable "lamp_instance_type" {
  type = string
  default = "t3a.medium"
}

variable "default_security_groups" {
  type = list
  default = ["<security group>"]
}

variable "ssh_key" {
  type = string
  default = "<key name>"
}

variable "ec2_subnet_id" {
  type = string
  default = "<subnet id>"
}

variable "ami_id" {
  type = "string"
  default = "ami-0affd4508a5d2481b"
}