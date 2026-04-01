terraform {
  backend "s3" {
    bucket = "backend-bucket-saicena"
    region = "ap-south-1"
    key = "dev/terraform.tfstate"
    
  }
}