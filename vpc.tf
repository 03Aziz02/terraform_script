resource "aws_vpc" "aziz" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "aziz-vpc"
  }
}
