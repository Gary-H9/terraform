terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "gary-up-and-running-state"
    key            = "workspaces-example/terraform.tfstate"
    region         = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

resource "aws_instance" "example" {
  ami		= "ami-097a2df4ac947655f"
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
}
