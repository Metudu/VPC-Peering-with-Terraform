resource "aws_subnet" "main_vpc_subnet" {
    provider = aws.main-region
    vpc_id = aws_vpc.main_vpc.id
    
    // cidr block of the vpc was 10.0.0.0/16   
    cidr_block = var.main-subnet-cidr-block
    availability_zone = var.main-az
    map_public_ip_on_launch = true

    tags = {
        Name = var.main-subnet-name
    }
}

resource "aws_subnet" "second_vpc_subnet" {
    provider = aws.second-region
    vpc_id = aws_vpc.second_vpc.id

    // cidr block of the vpc was 10.1.0.0/16   
    cidr_block = var.second-region-cidr-block
    availability_zone = var.second-az

    tags = {
        Name = var.second-subnet-name
    }
}