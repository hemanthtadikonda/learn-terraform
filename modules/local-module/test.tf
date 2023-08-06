data "aws_ami" "ami" {

  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami.id  // here id is attribute before doing anything read documentation once
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami.id  //
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-0baa986d8ebb5eeda" ]
}

variable "instance_type" {}  // here it is collecting variables from root module