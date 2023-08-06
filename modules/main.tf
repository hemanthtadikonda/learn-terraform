module "test" {                   // calling test module in local path
  source = "./local-module"
}

output "ami" {
  value = "test"     // module.test.ami - you can get only ami output date here
}                       // out put inside the child module can't directly print on root module