terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
        owner = "miqueas.santos"
        managed-by = "terraform"
        project = "course-terraform-udemy"
    }
  }
}