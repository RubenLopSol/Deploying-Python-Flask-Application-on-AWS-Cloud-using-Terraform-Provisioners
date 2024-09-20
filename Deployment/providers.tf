provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name        = "Deploying Python Flask Application on AWS Cloud using Terraform Provisioners"
      Environment = "Production"
      Owner       = "Rubén López"
      Department  = "devops"
      Project     = "1st"

    }
  }
}