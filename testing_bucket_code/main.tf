terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }

  backend "s3" {
    bucket         = "vinod2387"
    key            = "Vinod/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "test90"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "web" {
    ami           = "ami-0f88e80871fd81e91"
    instance_type = "t2.micro"
    
    tags = {
        Name = "web1"
    }
  
}


