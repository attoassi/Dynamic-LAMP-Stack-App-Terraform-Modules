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
  default     = "arn:aws:rds:us-east-1:663098898416:snapshot:fleetcart-final-snapshot-to-use"
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
  default     = "arn:aws:acm:us-east-1:663098898416:certificate/7fd24e2b-9ad1-445d-a3ab-a130c4bc824a"
  description = "the arn of the ssl certificate"
  type        = string
}

