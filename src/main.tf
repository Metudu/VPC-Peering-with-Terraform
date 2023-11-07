terraform {
  cloud {
    organization = "Metudu"

    workspaces {
      name = "VPC-Training"
    }
  }
}

// We wil work on two region, that's why we are using two aws providers
provider "aws" {
    region = var.main-region-id
    alias = "main-region"
}

provider "aws" {
    region = var.second-region-id
    alias = "second-region"
}