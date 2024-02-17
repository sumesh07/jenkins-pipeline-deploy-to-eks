terraform {
  backend "s3" {
    bucket = "rsumeshbucket-app"
    region = "ap-south-1"
    key = "eks/terraform.tfstate" 
  }
}
