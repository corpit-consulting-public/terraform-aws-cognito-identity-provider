output "name" {
    description = "Identity Pool Client Name"
    value       = "${aws_cognito_identity_provider.example_provider.provider_name}"
}
