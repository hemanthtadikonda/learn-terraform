resource "aws_instance" "amazonserver" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"
    security_group_ids = "sg-0baa986d8ebb5eeda"

    tags = {
        name = "amaxon"
    }
}