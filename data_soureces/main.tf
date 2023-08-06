data "aws_ami_ids" "ami" {
  owners = ["973714476881"]

}

output "ids"{
  value = data.aws_ami_ids.ami.ids
}

