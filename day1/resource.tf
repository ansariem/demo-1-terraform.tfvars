provider "aws" {
  
}

variable "AWS_REGION" {
  type = string
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "my ami"
  }
}


resource "aws_instance" "example" { 
  ami               = var.AMIS[var.AWS_REGION]      # Terrafrom .12 onwords we can use both notation
 # ami               = "${var.AMIS[var.AWS_REGION]}" # Terrafrom .12 onwords we can use both notation
  instance_type     = "t2.micro"
}

resource "aws_instance" "example2" { 
  ami               = var.AMIS[var.AWS_REGION]      # Terrafrom .12 onwords we can use both notation
 # ami               = "${var.AMIS[var.AWS_REGION]}" # Terrafrom .12 onwords we can use both notation
  instance_type     = "t2.micro"
}

resource "aws_instance" "example3" { 
  ami               = var.AMIS[var.AWS_REGION]      # Terrafrom .12 onwords we can use both notation
 # ami               = "${var.AMIS[var.AWS_REGION]}" # Terrafrom .12 onwords we can use both notation
  instance_type     = "t2.micro"
}



