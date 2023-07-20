module "aws-dev" {
  source        = "../../infra"
  instance_type = "t2.micro"
  instance_name = "iluvcoffee-dev-instance"
  key-pair      = "mfm-dev"
}
