terraform {

}

provider "aws" {
    region = var.main-region-id
    alias = "main-region"
}

provider "aws" {
    region = var.second-region-id
    alias = "second-region"
}