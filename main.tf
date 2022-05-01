resource "aws_acm_certificate" "ssl_cert" {
  domain_name               = var.domain
  subject_alternative_names = ["*.${var.domain}"]
  validation_method         = "DNS"

  tags = {
    Name          = lower(var.domain)
    stack         = lower(var.environment)
    application   = lower(var.application)
    cost-center   = lower(var.cost-center)
    deployed-by   = lower(var.deployed-by)
  }

  lifecycle {
    create_before_destroy = true
  }
}