terraform {
  backend "s3" {
    bucket = "techwithaden-terraform-state"
    key    = "vpc_custom_module/terraform.tfstate"
    region = "eu-west-2"
  }
}
