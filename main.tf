provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "example" {
    ami = "ami-0931307dcdc2a28c9"
    instance_type = var.instance_type
    key_name      = var.key_name
    user_data = file("install.sh")
}

resource "aws_security_group" "example_sg" {
  
  name = "example_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



  
