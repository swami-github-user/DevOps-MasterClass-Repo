terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "my-terraform-remote-state-bucket-new"
    key    = "terraform/remote-state"
  }
}







