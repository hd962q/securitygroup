provider "aws" {
 region = "us-east-2"
}
resource "aws_security_group" "sg" {
  name        = "sg"
  description = "Allow traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "AT&T from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["144.160.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_traffic"
  }
}
