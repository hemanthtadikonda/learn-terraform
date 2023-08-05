resource "aws_instance" "amazon" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"
    vpc_security_group_ids = "sg-0baa986d8ebb5eeda"

    tags = {
        name = "amazon"
    }
}
resource "aws_route53_record" "amazon" {

  zone_id = aws_route53_zone.primary.zone_id
  name    = "amazon.tadikonda.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.amazon.private_ip ]

}