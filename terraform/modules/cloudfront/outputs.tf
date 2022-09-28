output "cloudfront_distribution_endpoint" {
  value = aws_cloudfront_distribution.distribution.domain_name
}
output "public_key" {
  value = jsondecode(data.aws_secretsmanager_secret_version.cloudfront.secret_string)["publickey"]
}