terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  cloud {
    organization = "aws-tf-bedatty"

    workspaces {
      name = "aws-tf-actions"
    }
  }
}

resource "aws_vpc" "create_vpc" {
  cidr_block = "10.0.0.0/16"

}
