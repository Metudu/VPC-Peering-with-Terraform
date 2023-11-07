// Main Region Settings
variable "main-region-cidr-block" {
    default = "10.0.0.0/16"
}

variable "main-subnet-cidr-block" {
    default = "10.0.1.0/24"
}

variable "main-subnet-name" {
    default = "Subnet-Frankfurt"
}

variable "main-region-id" {
    default = "eu-central-1"
}

variable "main-az" {
    default = "eu-central-1a"
}

variable "main-ami" {
    default = "ami-0a485299eeb98b979"
}

variable "main-instance-type" {
    default = "t2.micro"
}

variable "main-instance-name" {
    default = "MainInstance"
}

variable "main-vpc-name" {
    default = "MainVPC"
}

variable "main-igw-name" {
    default = "MainVPC-IGW"
}

variable "main-sg-name" {
    default = "MainVPC-SG"
}

variable "main-sg-description" {
    default = "Allows ICMP"
}

// Second Region Settings
variable "second-region-cidr-block" {
    default = "10.1.0.0/16"
}

variable "second-region-id" {
    default = "eu-north-1"
}

variable "second-subnet-name" {
    default = "Subnet-Stockholm"
}

variable "second-az" {
    default = "eu-north-1a"
}

variable "second-ami" {
    default = "ami-03a2c69daedb78c95"
}

variable "second-instance-type" {
    default = "t3.micro"
}

variable "second-instance-name" {
    default = "SecondInstance"
}

variable "second-vpc-name" {
    default = "SecondVPC"
}

variable "second-sg-name" {
    default = "SecondVPC-SG"
}

variable "second-sg-description" {
    default = "Allows ICMP"
}