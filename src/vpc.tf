resource "aws_vpc" "main_vpc" {
    cidr_block = var.main-region-cidr-block
    provider = aws.main-region

    tags = {
      Name = var.main-vpc-name
    }
}

resource "aws_vpc" "second_vpc" {
    cidr_block = var.second-region-cidr-block
    provider = aws.second-region

    tags = {
      Name = var.second-vpc-name
    }
}