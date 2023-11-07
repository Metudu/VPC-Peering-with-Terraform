resource "aws_vpc_peering_connection" "vpc_peering" {
    provider = aws.main-region
    vpc_id = aws_vpc.main_vpc.id
    peer_vpc_id = aws_vpc.second_vpc.id
    peer_region = var.second-region-id
}

resource "aws_vpc_peering_connection_accepter" "vpc_peering_accepter" {
    provider = aws.second-region
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
    auto_accept = true
}