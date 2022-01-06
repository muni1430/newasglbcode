provider "aws"{
  region = "us-east-1"
}
module "a" {
  source = "git:: https://github.com/muni1430/newasglbcode.git?ref=main"
}
  module "b" {
    source = "git:: https://github.com/muni1430/newasglbcode.git?ref=main1"
    target_group_arns = module.a.TG_ARN
 }
