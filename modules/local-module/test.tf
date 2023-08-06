data "aws_ami_ids" "ami" {
  name_regex = "centos-*"
  owners = ["973714476881"]
}

output "test" {
  value = "data.aws_ami_ids.ami"
}