resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_vpc" "example_vcp" {
  cidr_block = "10.10.10.0/24"

  tags = {
    Name          = "Test VPC"
    ProvisionedBy = "Terraform"
  }
}

resource "aws_subnet" "example_subnet1" {
  vpc_id     = aws_vpc.example_vcp.id
  cidr_block = "10.10.10.0/25"

  tags = {
    Name          = "Test Subnet 1"
    ProvisionedBy = "Terraform"
  }
}

resource "aws_subnet" "example_subnet2" {
  vpc_id     = aws_vpc.example_vcp.id
  cidr_block = "10.10.10.128/25"

  tags = {
    Name          = "Test Subnet 2"
    ProvisionedBy = "Terraform"
  }
}

resource "aws_s3_bucket" "name" {
  bucket = "diogodds-terraform-test"

  tags = {
    Name          = "Test Bucket"
    ProvisionedBy = "Terraform"
  }
}