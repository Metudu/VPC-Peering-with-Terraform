resource "aws_internet_gateway" "MainVPC-IGW" {
    provider = aws.main-region
    vpc_id = aws_vpc.main_vpc.id

    tags = {
        Name = var.main-igw-name
    }
}