resource "aws_route_table" "main_vpc_route_table" {
    provider = aws.main-region
    vpc_id = aws_vpc.main_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.MainVPC-IGW.id
    }

    route {
        cidr_block = var.second-region-cidr-block
        vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id 
    }
}

resource "aws_route_table_association" "main_vpc_rt_association" {
    provider = aws.main-region
    route_table_id = aws_route_table.main_vpc_route_table.id
    subnet_id = aws_subnet.main_vpc_subnet.id
}

resource "aws_route_table" "second_vpc_route_table" {
    provider = aws.second-region
    vpc_id = aws_vpc.second_vpc.id

    route {
        cidr_block = var.main-region-cidr-block
        vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
    }
}

resource "aws_route_table_association" "second_vpc_rt_association" {
    provider = aws.second-region
    route_table_id = aws_route_table.second_vpc_route_table.id
    subnet_id = aws_subnet.second_vpc_subnet.id
}