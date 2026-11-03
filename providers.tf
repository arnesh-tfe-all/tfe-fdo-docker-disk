terraform {
  required_version = "1.15.6"
  cloud {
    
    organization = "tfe-org-hashicorp2026"
    workspaces {
      name = "fdo-docker-disk"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}