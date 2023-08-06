data "aws_ami_ids" "ami" {
  owners = ["973714476881"]
  name_regex = "centos-7-*"
}

output "ids"{
  value = data.aws_ami_ids.ami.ids
}

