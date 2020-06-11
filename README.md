
# tf-aws-cognito-identity-provider

Terraform module that creates Cognito Identity Provider resources in AWS.

## Allowing Users to Sign in Using a Social Identity Provider
  You can use federation for Amazon Cognito User Pools to integrate with social identity providers such as Facebook, Google, and Login with Amazon.

## Module Required

* [Cognito User Pool](https://registry.terraform.io/modules/corpit-consulting-public/cognito-user-pool/aws/0.1.5)


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

## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attribute\_mapping | The map of attribute mapping of user pool attributes. | map | `<map>` | no |
| idp\_identifiers | The list of identity providers. | list | `<list>` | no |
| provider\_details | The map of identity details, such as access token | map | `<map>` | no |
| provider\_name | The provider name | string | - | yes |
| provider\_type | The provider type | string | - | yes |
| user\_pool\_id | The user pool id | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| name | Identity Pool Client Name |

