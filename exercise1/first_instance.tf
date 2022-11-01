provider "aws" {
  region = "eu-north-1"
#   Do not use this, use awscli creds instead
#   access_key = ""
#   secret_key = ""
}

resource "aws_instance" "intro" {
    ami = "ami-05c42683296709b61"
    instance_type = "t3.micro"
    availability_zone = "eu-north-1"
    key_name = "External Generated Keypair"
    vpc_security_group_ids = [ "sg-08be7929149af0abc" ]
    tags = {
      "Name" = "Dove-Instance"
    }
}