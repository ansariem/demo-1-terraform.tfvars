resource "aws_s3_bucket" "terraform-state-x" {
  bucket = "terraform-state-x-a2b6219"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

