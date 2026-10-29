terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "6.25.0"
        }
    }

}

provider "aws" {
    #Configuration options
    region = "eu-north-1"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-murali"

  tags = {
    Name        = "My bucket terraform"
    Environment = "stage"
  }
}