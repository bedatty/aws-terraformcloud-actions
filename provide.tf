terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.3.0"

  cloud {
    organization = "aws-tf-bedatty"

    workspaces {
      name = "aws-tf-actions"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}