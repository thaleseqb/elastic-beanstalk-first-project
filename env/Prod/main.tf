module "Production" {
  source = "../../infra"
  name = "production"
  description = "production-application"
  machine = "t2.micro"
  MaxSize = 5
  environment = "production-environment"
}