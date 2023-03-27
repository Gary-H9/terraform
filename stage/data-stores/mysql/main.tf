provider "aws" {
  region = "us-east-2"
}

terraform {
  # backend "s3" {
  #   # Replace this with your bucket name!
  #   bucket         = "gary-up-and-running-state"
  #   key            = "stage/data-stores/mysql/terraform.tfstate"
  #   region         = "us-east-2"

  #   # Replace this with your DynamoDB table name!
  #   dynamodb_table = "terraform-up-and-running-locks-2"
  #   encrypt        = true
  # }
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  skip_final_snapshot = true
  db_name             = "example_database"

  username = var.db_username
  password = var.db_password
}