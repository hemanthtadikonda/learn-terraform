// If we want to iterate same task (resources) multiple time we have a concept called loops//

variable "components" {
  default = [ "cart" , "catalogue" , "frontend" , "mongodb" ]
}

resource "aws_security_group" "allow_tls" {
  count = length(var.components)
  name  = element(var.components, count.index)
}


// while running 2nd time where default = ["catalogue","frontend","mongodb"]
// here you "touching index" some of the resources can't move id doesn't intellectual

## it will DESTROY existing resources & recreate new resources
## we have a P-1 inc while deleting existing resources
## Inputs of the user we never & ever encouraged over by list of variables