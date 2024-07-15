# vpc variables

variable "vpc_cidr" {
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "private app subnet az2 cidr block"
  type        = string
}

# security groups variables

variable "ssh_location" {
  description = "the ip address that can ssh into the ec2 instance"
  type        = string
}

# rds variables

variable "db_snapshot_identifier" {
  description = "the database snapshot arn"
}

variable "database_instance_class" {
  description = "database instance type"
  type        = string
}

variable "database_instance_identifier" {
  description = "database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  description = "create a standby db instance"
  type        = bool
}

# sns topic variables

variable "operator_email" {
  description = "a valid email address"
  type        = string
}

# auto scaling group variables

variable "aws_launch_template" {
  description = "name of the launch template"
  type        = string
}

variable "ec2_image_id" {
  description = "id of the ami"
  type        = string
}

variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  description = "name of the ec2 key pair"
  type        = string
}

# route 53 variables
variable "domain_name" {
  description = "domain name"
  type        = string
}

variable "record_name" {
  description = "sub domain name"
  type        = string
}

# ACM VARIABLE
variable "alternative_names" {
  type = string
}
