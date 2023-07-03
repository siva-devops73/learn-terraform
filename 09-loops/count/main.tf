data "aws_ami" "example" {
  count = 3
  owners = ["973714476881"]
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloSiva"
  }
}

variable "instances" {
  default = ["frontend", "mongodb", "cataloue"]
}