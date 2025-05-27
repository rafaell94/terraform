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
  
}

variable "digicert_api_key" {
  description = "Digicert One API key"
  type        = string
}

# Akamai CPS Third Party Enrollment variables
variable "akamai_contract_id" {
  description = "Akamai contract ID."
  type        = string
  default     = "ctr_W-OQTPPG"
}

variable "akamai_common_name" {
  description = "Common name for the certificate."
  type        = string
}

variable "akamai_secure_network" {
  description = "Akamai secure network type."
  type        = string
  default     = "enhanced-tls"
}

variable "akamai_sni_only" {
  description = "Whether SNI only is enabled."
  type        = bool
  default     = true
}

variable "acknowledge_pre_verification_warnings" {
  description = "Whether SNI only is enabled."
  type        = bool
  default     = true
}

variable "akamai_enrollment_timeout" {
  description = "Timeout for the enrollment resource."
  type        = string
  default     = "1h"
}

variable "akamai_auto_approve_warnings" {
  description = "List of warnings to auto-approve."
  type        = list(string)
  default = [
    "DNS_NAME_LONGER_THEN_255_CHARS",
    "CERTIFICATE_EXPIRATION_DATE_BEYOND_MAX_DAYS"
  ]
}

variable "akamai_signature_algorithm" {
  description = "Signature algorithm."
  type        = string
  default     = "SHA-256"
}

variable "akamai_admin_first_name" {
  description = "Admin contact first name."
  type        = string
  default     = "Ben"
}

variable "akamai_admin_last_name" {
  description = "Admin contact last name."
  type        = string
  default     = "Weber"
}

variable "akamai_admin_phone" {
  description = "Admin contact phone."
  type        = string
  default     = "727-567-6841"
}

variable "akamai_admin_email" {
  description = "Admin contact email."
  type        = string
  default     = "ben.weber@raymondjames.com"
}

variable "akamai_tech_first_name" {
  description = "Tech contact first name."
  type        = string
  default     = "Adam"
}

variable "akamai_tech_last_name" {
  description = "Tech contact last name."
  type        = string
  default     = "Torres"
}

variable "akamai_tech_phone" {
  description = "Tech contact phone."
  type        = string
  default     = "+1-720-274-3975"
}

variable "akamai_tech_email" {
  description = "Tech contact email."
  type        = string
  default     = "adtorres@akamai.com"
}

variable "akamai_csr_country_code" {
  description = "CSR country code."
  type        = string
  default     = "US"
}

variable "akamai_csr_city" {
  description = "CSR city."
  type        = string
  default     = "St. Petersburg"
}

variable "akamai_csr_organization" {
  description = "CSR organization."
  type        = string
  default     = "Raymond James Financial, Inc"
}

variable "akamai_csr_organizational_unit" {
  description = "CSR organizational unit."
  type        = string
  default     = "IT"
}

variable "akamai_csr_state" {
  description = "CSR state."
  type        = string
  default     = "Florida"
}

variable "akamai_disallowed_tls_versions" {
  description = "List of disallowed TLS versions."
  type        = list(string)
  default     = ["TLSv1", "TLSv1_1"]
}

variable "akamai_clone_dns_names" {
  description = "Whether to clone DNS names."
  type        = bool
  default     = false
}

variable "akamai_geography" {
  description = "Geography for network configuration."
  type        = string
  default     = "core"
}

variable "akamai_ocsp_stapling" {
  description = "OCSP stapling setting."
  type        = string
  default     = "on"
}

variable "akamai_preferred_ciphers" {
  description = "Preferred ciphers."
  type        = string
  default     = "ak-akamai-2020q1"
}

variable "akamai_must_have_ciphers" {
  description = "Must-have ciphers."
  type        = string
  default     = "ak-akamai-2020q1"
}

variable "akamai_quic_enabled" {
  description = "Whether QUIC is enabled."
  type        = bool
  default     = false
}

variable "akamai_org_name" {
  description = "Organization name."
  type        = string
  default     = "Raymond James Financial, Inc"
}

variable "akamai_org_phone" {
  description = "Organization phone."
  type        = string
  default     = "727-567-1000"
}

variable "akamai_org_address_line_one" {
  description = "Organization address line one."
  type        = string
  default     = "880 Carillion Parkway"
}

variable "akamai_org_city" {
  description = "Organization city."
  type        = string
  default     = "St. Petersburg"
}

variable "akamai_org_country_code" {
  description = "Organization country code."
  type        = string
  default     = "US"
}

variable "akamai_org_postal_code" {
  description = "Organization postal code."
  type        = string
  default     = "33176"
}

variable "akamai_org_region" {
  description = "Organization region."
  type        = string
  default     = "Florida"
}

variable "akamai_acknowledge_post_verification_warnings" {
  description = "Whether to acknowledge post verification warnings for Akamai certificate upload."
  type        = bool
  default     = false
}

variable "akamai_acknowledge_change_management" {
  description = "Whether to acknowledge change management for Akamai certificate upload."
  type        = bool
  default     = false # false goes to staging env; true goes to production
}

variable "akamai_wait_for_deployment" {
  description = "Whether to wait for deployment for Akamai certificate upload."
  type        = bool
  default     = true
}