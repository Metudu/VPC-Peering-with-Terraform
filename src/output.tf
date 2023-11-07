output "second-instance-private-ip" {
    value = aws_instance.second_vpc_instance.private_ip
}