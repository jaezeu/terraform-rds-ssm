terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key    = "jaz-rds.tfstate"
    region = "ap-southeast-1"
  }
}