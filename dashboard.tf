provider "aws" {
  region = "us-east-2"
  profile = "CW-DATABUS-DEV"
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "dev-observations-msk-dashboard"

  dashboard_body = file("${path.module}/widgets.json")
}