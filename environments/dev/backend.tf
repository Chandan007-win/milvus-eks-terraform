terraform {
  backend "s3" {
    bucket         = "tf-state-milvus"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

