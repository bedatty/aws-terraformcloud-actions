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

