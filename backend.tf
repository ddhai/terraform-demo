terraform {
  backend "s3" {
    bucket = "tf-demo-co-well"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "us-west-2"
}
