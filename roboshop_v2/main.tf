
variable "zone_id" {
  default  = "Z09760323G7SC2VABFTOY"
}

variable "ami" {
  default  = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default  = "t2.micro"
}

variable "security_group" {
  default  = "sg-0baa986d8ebb5eeda"
}

variable "components" {
  default = {
    frontend  = { name = "frontend-dev"  }
    mongodb   = { name = "mongodb-dev "  }
    catalogue = { name = "catalogue-dev" }
    redis     = { name = "redis-dev "    }
    user      = { name = "user-dev"      }
    cart      = { name = "cart-dev"     }
    mysql     = { name = "mysql-dev"     }
    shipping  = { name = "shipping-dev"  }
    rabbitmq  = { name = "rabbitmq-dev"  }
    payment   = { name = "payment-dev"   }
    dispatch  = { name = "dispatch-dev"  }

  }
}


resource "aws_instance" "instance" {



  ami                     = var.ami
  instance_type           = var.instance_type
  vpc_security_group_ids  = var.security_group

  tags            = {
    Name          = lookup(var.components["payment"], ["name"], null )
  }
}

output "checking" {
  value  = aws_instance.instance
}

