# we know the drawback for count loop so
variable "components" {
  default  = {
    frontend = {}
    mongodb  = {}
  }
}



resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name     = lookup(var.components, eac.key  , null)
}