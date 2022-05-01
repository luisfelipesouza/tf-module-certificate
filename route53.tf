resource "aws_route53_record" "cert_validation" {
    count   = 1

    allow_overwrite = true
    name    = element(aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_name, count.index)
    type    = element(aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_type, count.index)
    zone_id = var.hosted_zone_id
    records = ["${element(aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_value, count.index)}"]
    ttl     = 60

    depends_on = [ aws_acm_certificate.ssl_cert ]
}