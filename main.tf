provider "aws" {
  region = var.aws_region
}

## get AZ's details
data "aws_availability_zones" "availability_zones" {}
