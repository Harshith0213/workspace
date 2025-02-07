
############ PROVIDER BLOCK ############
provider "aws" {
  region     = "us-east-1"
  profile    = "default"
}
############ SAVING TF STATE FILE #########
terraform {
  backend "s3" {
    bucket  = "test-atlantis-easydeploy"
    key     = "atlantis/terraform.tfstate"
    region  = "us-east-1"
    profile = "default"
  }
}
resource "aws_vpc" "example" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
      Name = "vpc-1-test"
    }
  
}
