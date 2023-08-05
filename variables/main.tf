// plain variable //
variable "fruit" {
  default = "apple"
}

output "fruit_name" {
  value  = var.fruit
}
// if you have a single variable you directly call with variable name//

//list variable // variables can be support's in list format

variable "fruits" {
  default  = ["mango","banana","grape"]
}
// to access the first variable
output "fruits_first"{
  value  = var.fruits[0]
}
// to access the second variable//
output "fruits_second" {
  value  = var.fruits[1]
}
// to access the 3rd variable
output "fruits_third"{
  value  = var.fruits[2]
}

// in a list variable list index starts from ZERO //


# Map variables // variables can be supports in Map as well

variable "fruits_quantity" {
  default  = {
    grapes  = 100
    mango   = 20
  }
}
// here you don't worry about "list index" / call with variable name
## Access a Map Variable / mango
output "fruits_quantity_mango"  {
  value  = var.fruits_quantity["mango"]
}
## Access a Map Variable/ grapes
output "fruits_quantity_grapes"  {
  value  = var.fruits_quantity["grapes"]
}

# # variables can be supported as Maps of MAP format As WELL
variable "fruits_quan_with_price"  {
  default  = {
    mango  = {
      quan  = 20
      price = 15
    }
    grapes  ={
      quan  = 100
      price  = 2
    }
  }
}

// To access the Mango_ price? //
output "fruit_mango_price" {
  value = var.fruits_quan_with_price["mango"].price
}
// to Access grapes Quantity //
output "fruit_grape_quan"  {
  value  = var.fruits_quan_with_price["grapes"].quan
}

// just a try to access both variable in mango //
output "fruit_mango_details" {
  value  = var.fruits_quan_with_price["mango"]
}


#### # Variable Data Types ###
variable "fruits_details"{
  default  = {
    mango  = {
      quan  = 30 #num
      for_export  = true  # boolean
      place  = "canada" # string
    }
    kiwi  = {
      quan  = 40 # num
      for_export = true # boolean
      place = "kenya" # string
    }
  }
}
# Variable in a combination of any other string then it needs to be with in  "${}"
// to access mango details //
output "mango_details"{
  value  = "${var.fruits_details["mango"]}"
}

//to access kiwi for sale //
output "is kiwi for sale"   {
  value  = "${var.fruits_details["kiwi"].for_export}"
}

//to access kiwi for place //
output "is kiwi export place "   {
  value  = "${var.fruits_details["kiwi"].place}"
}
