terraform {
  backend "s3" {
    bucket  = "tiqs-tf-state-files"    # Name of the S3 bucket
    key     = "aws-to-gcp-vpn.tfstate" # The name of the state file in the bucket
    region  = "us-east-1"              # Choose your region
    encrypt = true                     # Enable server-side encryption (optional but recommended)
  }

  required_providers {
    google = {
      source  = "hashicorp/google",
      version = "~> 7.0"               # Use latest version if possible
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"               # Use latest version if possible

    }
  }
}