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

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
   tags = {
    Name = "Teste-with-tf"
  }
}
