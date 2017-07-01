data "terraform_remote_state" "vpc" {
  backend = "s3"
  config {
    bucket = "tf-demo-co-well"
    key = "stage/vpc/terraform.tfstate"
  }
}

resource "aws_vpc" "minimal" {
cidr_block = "${data.terraform_remote_state.vpc.vpc_cidr"
enable_dns_support   = true
enable_dns_hostnames = true
  tags {
    Name = "minimal-lab"
  }
}
