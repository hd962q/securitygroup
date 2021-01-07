resource "aws_vpc" "vpc2" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  placement {
    availability_zone = "us-east-2b"
  }

  tags = {
    Name = "main"
  }
}
