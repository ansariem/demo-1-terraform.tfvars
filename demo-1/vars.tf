variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-04ebc3e86c4d05d87"
    us-west-2 = "ami-06b94666"
    us-west-1 = "ami-06fcc1f0bc2c8943f"
  }
}

