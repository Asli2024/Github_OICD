terraform {
  backend "s3" {
    bucket = "tf-state-bucket-c687c79"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}
