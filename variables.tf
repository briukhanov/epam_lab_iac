# Use your own private key path !!!
#copy <private.pem> to your local instance to the home directory
#chmod 600 id_rsa.pem
variable "private_key_ec2" { default = "~/.ssh/wibob-Frankfurt-aws.pem" }

#network address for vpc
variable "vpc_cidr" { default = "10.10.0.0/16" }

#this name used like prefix to name resources
variable "cluster_name" { default = "epam_lab_iac" }

# fill this field to create description for resources
variable "createdby" { default = "Oleksandr Briukhanov" }

# AWS Region Where Resources Will be Created
variable "aws_region" { default = "eu-central-1" }

# Subnet netowork address for web instance (public)
variable "public_subnet_cidr" { default = "10.10.1.0/24" }

# Subnet netowork addresses for RDS instance endpoint (private)
variable "private_subnets_cidr" { default = ["10.10.2.0/24", "10.10.3.0/24"] }

# AWS ec2_instance_id for most usefull regions (Ubuntu 18.04 by default)
variable "images" {
  type = map
  default = {
    "us-east-1"      = "ami-06b263d6ceff0b3dd"
    "us-east-2"      = "ami-0010d386b82bc06f0"
    "us-west-1"      = "ami-0b33356b362c56df5"
    "us-west-2"      = "ami-0ba60995c1589da9d"
    "ap-south-1"     = "ami-063a57e81279c601b"
    "ap-northeast-2" = "ami-061b0ee20654981ab"
    "ap-southeast-1" = "ami-0b44582c8c5b24a49"
    "ap-southeast-2" = "ami-0c6cdb2e7cf34ada4"
    "ap-northeast-1" = "ami-08046c40513c3265e"
    "ca-central-1"   = "ami-0db10d1bd827c7426"
    "eu-central-1"   = "ami-0e63910157459607d"
    "eu-west-1"      = "ami-04137ed1a354f54c4"
    "eu-west-2"      = "ami-0287acb18b6d8efff"
    "eu-west-3"      = "ami-006987b5e26f0d62e"
    "eu-north-1"     = "ami-0e769fbef3dc1c3b8"
  }
}

# AWS ec2_instance type
variable "instance_type" { default = "t2.micro" }

# Name of private key stored in AWS. Used to access to ec2_instance
variable "instance_access_private_key" { default = "wibob-Frankfurt-aws" }


# variable "private_subnet_two_cidr" { default = "10.10.3.0/24" }
variable "route_table_cidr" { default = "0.0.0.0/0" }

# this port will be opened by security_groups for web instanse
variable "web_ports" { default = ["22", "80", "443"] }

# this port will be opened by security_groups for RDS instanse
variable "db_ports" { default = ["22", "3306"] }

# RDS parameters
# --------------
# Storage allocated for database (GB)
variable "db_allocated_storage" { default = "20" }

# Type of AWS storage
variable "db_storage_type" { default = "gp2" }

# Database engine type
variable "db_engine" { default = "mysql" }

# Database engine version
variable "db_engine_version" { default = "5.7" }

# Instance class for RDS database
variable "db_instance_class" { default = "db.t2.micro" }

# Database port
variable "db_port" { default = "3306" }

# Name of database
variable "db_name" { default = "db" }

variable "db_identifier" { default = "mysqldb" }


variable "db_parameter_group_name" { default = "default.mysql5.7" }

# username and password to access to database
# (Be carefull with this sensible information - do not push config files
# with your real credentials into public accessible repository)
variable "db_username" { default = "epam_db" }
variable "db_password" { default = "eede#3e$$O0" }

# NGINS Parameters
# ----------------
variable "nginx_http_host" { default = "example.com" }
variable "nginx_http_conf" { default = "example.com.conf" }
variable "nginx_http_port" { default = "80" }
