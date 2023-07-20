module "aws-prod" {
  source        = "../../infra"
  instance_type = "t2.micro"
  instance_name = "iluvcoffee-prod-instance"
  key-pair      = "mfm-prod"
}
