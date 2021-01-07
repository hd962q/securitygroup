data "aws_regions" "us-east-2" {
  all_regions = false
}
resource "aws_vpc" "vpc2" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "main"
  }
}
