## Configuration for data to store Terraform state in your s3_bucket

terraform {
  backend "s3" {
    bucket = "epamweb-aws-jenkins-terraform"
    key    = "myapp/dev/epam_web-aws-jenkins-terraform.tfstate"
    region = "eu-central-1"
  }
}
