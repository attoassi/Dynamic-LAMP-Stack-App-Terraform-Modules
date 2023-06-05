# vpc variables

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  default     = "10.0.0.0/24"
  description = "public subnet az1 cidr block"
  type        = string
}

variable "public_subnet_az2_cidr" {
  default     = "10.0.1.0/24"
  description = "public subnet az2 cidr block"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  default     = "10.0.2.0/24"
  description = "private app subnet az1 cidr block"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  default     = "10.0.3.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  default     = "10.0.4.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  default     = "10.0.5.0/24"
  description = "private app subnet az2 cidr block"
  type        = string
}

# security groups variables

variable "ssh_location" {
  default     = "0.0.0.0/0" # we use this value for testing purpose, but for best proctice type the ip address that can ssh into the ec2 instance
  description = "the ip address that can ssh into the ec2 instance"
  type        = string
}

# rds variables

variable "db_snapshot_identifier" {
  default     = "paste the value of your db snpshot arn here"
  description = "the database snapshot arn"
}

variable "database_instance_class" {
  default     = "db.t2.micro"
  description = "database instance type"
  type        = string
}

variable "database_instance_identifier" {
  default     = "clientprojectdatabase"
  description = "database instance identifier"
  type        = string
}

variable "multi_az_deployment" {
  default     = false
  description = "create a standby db instance"
  type        = bool
}

# application load balancer variable

variable "ssl_certificate_arn" {
  default     = "paste the value of your certificate arn here"
  description = "the arn of the ssl certificate"
  type        = string
}

# sns topic variables

variable "operator_email" {
  default     = "paste the value of your developer/operator email here"
  description = "a valid email address"
  type        = string
}

# auto scaling group variables

variable "aws_launch_template" {
  default     = "dev-launch-template"
  description = "name of the launch template"
  type        = string
}

variable "ec2_image_id" {
  default     = "ami-042933cbdb248d221"
  description = "id of the ami"
  type        = string
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "ec2 instance type"
  type        = string
}

variable "ec2_key_pair_name" {
  default     = "ec2key"
  description = "name of the ec2 key pair"
  type        = string
}

# route 53 variables

variable "domain_name" {
  default     = "paste the value of your domain name here"
  description = "domain name"
  type        = string
}

variable "record_name" {
  default     = "www"
  description = "sub domain name"
  type        = string
}
