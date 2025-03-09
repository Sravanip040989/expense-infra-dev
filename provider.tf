terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "funbag-remote-state"
    key    = "provisioners"
    region = "us-east-1"
     dynamodb_table = "funbag-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}