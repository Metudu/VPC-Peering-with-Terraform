resource "aws_instance" "main_vpc_instance" {
    provider = aws.main-region
    instance_type = var.main-instance-type
    ami = var.main-ami
    subnet_id = aws_subnet.main_vpc_subnet.id
    vpc_security_group_ids = [ aws_security_group.main_vpc_sg.id ]

    tags = {
      Name = var.main-instance-name
    }
}

resource "aws_instance" "second_vpc_instance" {
    provider = aws.second-region
    instance_type = var.second-instance-type
    ami = var.second-ami
    subnet_id = aws_subnet.second_vpc_subnet.id
    vpc_security_group_ids = [ aws_security_group.second_vpc_sg.id ]

    tags = {
      Name = var.second-instance-name
    }
}