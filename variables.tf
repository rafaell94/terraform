

# Akamai Provider Config variables

variable "akamai_client_secret" {
  description = "Akamai client secret."
  type        = string
  sensitive   = true
}

variable "akamai_host" {
  description = "Akamai API host."
  type        = string
}

variable "akamai_access_token" {
  description = "Akamai access token."
  type        = string
  sensitive   = true
}

variable "akamai_client_token" {
  description = "Akamai client token."
  type        = string
  sensitive   = true
}

variable "akamai_account_key" {
  description = "Akamai account key."
  type        = string
  default     = ""
  sensitive   = true
}

# Digicert Provider Config
variable "digicert_url" {
  description = "The DigiCert ONE API base URL"
  type        = string
  default     = "https://flexibleorigin.rafa.cr"
}

variable "digicert_api_key" {
  description = "Digicert One API key"
  type        = string
  default     = "123456"
}


variable "akamai_common_names" {
  description = "Common name for the certificate."
  type        = list(string)
}