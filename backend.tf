terraform {
  backend "s3" {
    bucket = "ugobase-bucket"
    key    = "state-file/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
    dynamodb_table = "ugobase-db"
  }
}