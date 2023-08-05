## https://developer.hashicorp.com/terraform/language/functions ## read this documentation

variable "persons"{
  default  = [ "hemanth" , "ramu" ]
}

output "person_hemanth" {
  value = element(var.persons, 2) // var.persons[2] //list index will give error element fun will recycle it
}

output "person_dasu"{
  value = try(var.persons, "no such name")  //
}

variable "person_with_role" {
  default = {
    hemanth = "analyst"
    harika  = "analyst"
  }
}

output "person_drona_role"{
  value = try(var.person_with_role["drona"], "no such one") // without function we get error
}

variable "person_details" {
  default = {
    hemanth = {
      role  = "analyst"
      exp   = 2
    }
    baji  = {
      role = "analyst"
      exp  = 3
    }
  }
}

output "person_hemanth_org"{
  value = "${lookup(var.person_details["hemanth"], "org", "k" )}"
}



