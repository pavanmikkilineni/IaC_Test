provider "azurerm" {
  features {}
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-public-bucket"
  acl    = "public-read"

   logging {
    target_bucket = "my-unique-log-bucket" # Change to your unique log bucket name
    target_prefix = "log/"
  }

}

resource "aws_s3_bucket" "my_log_bucket" {
  bucket = "my-unique-log-bucket" # Change to your unique log bucket name
  acl    = "private"
}
