provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "my_ec2" {
  ami           = "ami-0d176f79571d18a8f"  
  instance_type = "t3.micro"
  key_name      = "pem_key"
  count = 3


  tags = {
    Name = "my-ec2"
  }
}