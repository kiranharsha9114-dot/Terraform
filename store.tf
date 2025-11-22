terraform {
backend "s3" {
bucket = "kiran.flm.kops"
region = "us-east-1"
key = "mystore/terraform.tfstate"
}
}

