provider "aws" {

  region = "eu-west-2" # London region

}

resource "aws_s3_bucket" "bucket" {

  bucket = "javionnews3bucket1"
 } 
terraform {
  backend "s3" {
    bucket                  = "javionnews3bucket1"
    key                     = "build/terraform.tfstate"
    region                  = "eu-west-2"
      }
}
resource "aws_instance" "test1" {
  ami         = "ami-0fc7a46876a675c5f"
  instance_type = "t2.micro"
  tags = {
    Name = "window server"
  }
}
