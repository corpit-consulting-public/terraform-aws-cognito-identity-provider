## Usage

```hcl

module "cognito_identity_provider" {
  source = "./modules/terraform-aws-cognito-identity-provider"
  user_pool_id      = "${module.cognito_user_pool.id}"
  provider_name     = "${var.provider_name}"
  provider_type     = "${var.provider_type}"
  provider_details  = "${var.provider_details}"
  attribute_mapping = "${var.attribute_mapping}"
}

```
