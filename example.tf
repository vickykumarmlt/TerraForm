terraform {
  backend "remote" {
    organization = "Studentvicky"

    workspaces {
      name = "Example-Workspace"
    }
  }
}



provider "aws" {
  region                  = "ap-south-1"
  shared_credentials_file = "/home/vikramkumar/.aws/credentials"
  profile                 = "default"
  #access_key = "AKIASVYAHNG3KBHPOOPU"
  #secret_key = "20URHlDWINo0FSlb6Yo5+jQ0Fm8kJWxYaySpLqki"
}
resource "aws_instance" "example" {
  ami           = "ami-0123b531fc646552f"
  instance_type = "t2.micro"
}
