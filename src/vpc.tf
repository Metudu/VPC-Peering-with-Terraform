resource "aws_vpc" "main_vpc" {
    cidr_block = var.main-region-cidr-block
    provider = aws.main-region

    tags = {
      Name = var.main-vpc-name
    }
    // We'll deploy this vpc in frankfurt(eu-central-1) and use it as our main vpc
}

resource "aws_vpc" "second_vpc" {
    cidr_block = var.second-region-cidr-block
    provider = aws.second-region

    tags = {
      Name = var.second-vpc-name
    }
    // Avoid using overlapping cidr blocks, otherwise it won't work!
    // Also don't forget to select the second provider!
}