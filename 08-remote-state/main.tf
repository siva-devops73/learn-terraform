terraform {
  backend "s3" {
    bucket = "terraform-s73"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

output "demo" {
  value = "Hello Siva"
}
