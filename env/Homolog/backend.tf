terraform {
  backend "s3" {
    bucket = "terraform-state-first-bucket-alura"
    key = "Homolog/terraform.tfstate"
    region = "us-east-1"
  }
}