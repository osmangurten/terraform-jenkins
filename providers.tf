provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "osmangurten-tf-bucket"
    key    = "jenkins/backend/terraform.tfstate"
    region = "us-east-1"
  }
}
