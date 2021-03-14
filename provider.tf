terraform {
  backend "s3" {
    bucket = "terraform-devops.hycloud.tfstate"
    key    = "module-vpc.tfstate"
    encrypt = true
    dynamodb_table = "hycloud-state-lock"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

}

# Configure the AWS Provider for us east region
provider "aws" {
  region = "us-east-1"
}



