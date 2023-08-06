module "test" {
  source = "./local-module"
  instance_type = var.instance_type
}

output "test" {
  value = module.test     // root module can't get child module output
}                       // if you mention module.test.ami you can print only ami output

variable "instance_type" {
  default = "t2.micro"
}