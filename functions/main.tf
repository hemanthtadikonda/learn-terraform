## https://developer.hashicorp.com/terraform/language/functions ## read this documentation

variable "persons"{
  default  = [ "hemanth" , "ramu" ]
}

output "person_hemanth" {
  value = element(var.persons, 2)} // var.persons[2] //list index will give error element fun will recycle it
}

output "person_dasu"{
  value = try(var.persons, "no such name")  //
}

