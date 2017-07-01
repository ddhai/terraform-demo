terraform {
  backend "s3" {
    bucket = "tf-demo-co-well"
    key    = "terraform.tfstate"
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
