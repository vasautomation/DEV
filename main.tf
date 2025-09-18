provider "aws" {
  region = "us-west-1"
}
resource "aws_instance" "one" {
  count         = 2
  ami           = "ami-0945610b37068d87a"
  instance_type = "t2.micro"
    tags = {
    Name = "GitTerraform"
  }
}
