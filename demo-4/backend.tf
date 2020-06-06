terraform {
    backend "s3" {
    bucket = "ansari-terraform"
    key =  "ansari/demo-4/terraform.tfstate"
    }
}