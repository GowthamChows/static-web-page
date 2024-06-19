
provider "aws" {
  region = "us-west-2"  # Replace with your preferred region
}

terraform {
  required_providers {
    aws = "~> 3.0"
  }
}
