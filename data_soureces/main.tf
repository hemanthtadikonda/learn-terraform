data "aws_ami_ids" "ami" {
  name_regex = "Centos-7-*"
  owners = ["973714476881"]

}

output "ids"{
  value = data.aws_ami_ids.ami.ids
}

