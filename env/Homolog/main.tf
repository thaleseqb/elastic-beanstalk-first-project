module "Homologation" {
  source = "../../infra"
  name = "homologation"
  description = "homologation-application"
  machine = "t2.micro"
  MaxSize = 3
  environment = "homologation-environment"
}