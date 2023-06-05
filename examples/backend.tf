terraform {
  backend "s3" {
    key = "path/to/tfstate/terraform.tfstate"
  }
}