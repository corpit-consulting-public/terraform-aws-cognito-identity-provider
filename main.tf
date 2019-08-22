resource "aws_cognito_identity_provider" "example_provider" {
  user_pool_id      = "${var.user_pool_id}"
  provider_name     = "${var.provider_name}"
  provider_type     = "${var.provider_type}"
  provider_details  = "${var.provider_details}"
  attribute_mapping = "${var.attribute_mapping}"
}
