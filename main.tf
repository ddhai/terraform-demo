terraform {
  backend "s3" {
    bucket = "tf-demo-co-well"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
}

resource "aws_vpc" "minimal" {
cidr_block = "${var.vpc_cidr}"
enable_dns_support   = true
enable_dns_hostnames = true
  tags {
    Name = "minimal-lab"
  }
}
