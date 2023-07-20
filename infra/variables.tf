variable "sao_paulo_region" {
  type    = string
  default = "sa-east-1"
}

variable "key-pair" {
  type    = string
}

variable "ubuntu_22_04" {
  type    = string
  default = "ami-0af6e9042ea5a4e3e"
}

variable "instance_type" {
  type    = string
}

variable "instance_name" {
  type = string
}
