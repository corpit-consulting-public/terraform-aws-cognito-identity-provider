variable "user_pool_id" {
  type        = string
  description = "The user pool id"
}

variable "provider_name" {
  type        = string
  description = "The provider name"
}

variable "provider_type" {
  type        = string
  description = "The provider type"
}

variable "attribute_mapping" {
  type        = map(string)
  description = "The map of attribute mapping of user pool attributes."
  default     = {}
}

variable "idp_identifiers" {
  type        = list(string)
  description = "The list of identity providers."
  default     = []
}

variable "provider_details" {
  type        = map(string)
  description = "The map of identity details, such as access token"
  default     = {}
}

