data "terraform_remote_state" "vpc" {
  backend = "s3"
  config {
    bucket = "terraform-state-prod"
    key    = "vpc/terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}


resource "aws_vpc" "minimal" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags {
    Name = "minimal-lab"
  }
}
