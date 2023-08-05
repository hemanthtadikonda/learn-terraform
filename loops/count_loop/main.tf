// If we want to iterate same task (resources) multiple time we have a concept called loops//

variable "components" {
  default = [  "catalogue" , "frontend" , "mongodb" ]
}

//resource "aws_instance" "instance" {

 //   count = length(var.components)

//    ami  = "ami-0f34c5ae932e6f0e4"
//    instance_type = "t2.micro"
//    vpc_security_group_ids = ["sg-0baa986d8ebb5eeda"]
//    tags  = {
//      Name  = element(var.components, count.index) // it is list  you should mention element // lookup works for Map input
//    }
//}




resource "aws_security_group" "allow_tls" {
  count = length(var.components)
  name  = element(var.components, count.index)
}


// while running 2nd time where default = ["catalogue","frontend","mongodb"]
// here you "touching index" some of the resources can't move id doesn't intellectual

## it will DESTROY existing resources & recreate new resources
## we have a P-1 inc while deleting existing resources
## Inputs of the user we never & ever encouraged over by list of variables