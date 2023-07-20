terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = var.sao_paulo_region
}

resource "aws_instance" "app_server" {
  ami             = var.ubuntu_22_04
  instance_type   = var.instance_type
  key_name        = var.key-pair
  security_groups = ["ssh-devops-gabriel"]
  tags = {
    Name = var.instance_name
  }
}

resource "aws_key_pair" "mfmSSHKey" {
  key_name   = var.key-pair
  public_key = file("${var.key-pair}.pub")
}

