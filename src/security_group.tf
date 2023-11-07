resource "aws_security_group" "main_vpc_sg" {
    provider = aws.main-region
    name = var.main-sg-name
    description = var.main-sg-description
    vpc_id = aws_vpc.main_vpc.id

    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = [ var.var.second-region-cidr-block ]
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}

resource "aws_security_group" "second_vpc_sg" {
    provider = aws.second-region
    name = var.second-sg-name
    description = var.second-sg-description
    vpc_id = aws_vpc.second_vpc.id

    ingress {
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = [ var.var.main-region-cidr-block ]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}