output "cert_domain_name" {
  value = aws_acm_certificate.ssl_cert.domain_name
}
output "cert_arn" {
  value = aws_acm_certificate.ssl_cert.arn
}
output "record_name" {
  value = aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_name
}
output "record_type" {
  value = aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_type
}
output "record_value" {
  value = aws_acm_certificate.ssl_cert.domain_validation_options.*.resource_record_value
}
output "cert_status" {
  value = aws_acm_certificate.ssl_cert.status
}