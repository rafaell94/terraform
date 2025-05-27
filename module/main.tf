

resource "akamai_cps_third_party_enrollment" "my-enrollment" {
  contract_id    = var.akamai_contract_id
  common_name    = var.akamai_common_name
  secure_network = var.akamai_secure_network
  sni_only       = var.akamai_sni_only
  timeouts {
    default = var.akamai_enrollment_timeout
  }
  #auto_approve_warnings = var.akamai_auto_approve_warnings
  acknowledge_pre_verification_warnings = var.acknowledge_pre_verification_warnings
  signature_algorithm   = var.akamai_signature_algorithm
  admin_contact {
    first_name = var.akamai_admin_first_name
    last_name  = var.akamai_admin_last_name
    phone      = var.akamai_admin_phone
    email      = var.akamai_admin_email
  }
  tech_contact {
    first_name = var.akamai_tech_first_name
    last_name  = var.akamai_tech_last_name
    phone      = var.akamai_tech_phone
    email      = var.akamai_tech_email
  }
  csr {
    country_code        = var.akamai_csr_country_code
    city                = var.akamai_csr_city
    organization        = var.akamai_csr_organization
    organizational_unit = var.akamai_csr_organizational_unit
    state               = var.akamai_csr_state
  }
  network_configuration {
    disallowed_tls_versions = var.akamai_disallowed_tls_versions
    clone_dns_names         = var.akamai_clone_dns_names
    geography               = var.akamai_geography
    ocsp_stapling           = var.akamai_ocsp_stapling
    preferred_ciphers       = var.akamai_preferred_ciphers
    must_have_ciphers       = var.akamai_must_have_ciphers
    quic_enabled            = var.akamai_quic_enabled
  }
  organization {
    name             = var.akamai_org_name
    phone            = var.akamai_org_phone
    address_line_one = var.akamai_org_address_line_one
    city             = var.akamai_org_city
    country_code     = var.akamai_org_country_code
    postal_code      = var.akamai_org_postal_code
    region           = var.akamai_org_region
  }
}

data "akamai_cps_csr" "my-csr" {
  enrollment_id = akamai_cps_third_party_enrollment.my-enrollment.id
}

resource "local_file" "my_csr_pem_rsa" {
  content  = data.akamai_cps_csr.my-csr.csr_rsa
  filename = "pem/csr/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_csr_RSA.pem"
}

resource "local_file" "my_csr_pem_ecdsa" {
  content  = data.akamai_cps_csr.my-csr.csr_ecdsa
  filename = "pem/csr/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_csr_ECDSA.pem"
}

/*
resource "local_file" "my_cert_rsa" {
  filename  = "./pem/certs/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_cert_RSA.pem"
}

resource "local_file" "my_chain_rsa" {
  filename = "./pem/certs/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_chain_RSA.pem"
}

resource "local_file" "my_cert_ecdsa" {
  filename  = "./pem/certs/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_cert_ECDSA.pem"
}

resource "local_file" "my_chain_ecdsa" {
  filename = "./pem/certs/${akamai_cps_third_party_enrollment.my-enrollment.id}_${var.akamai_common_name}_chain_ECDSA.pem"
}



#Sign the cert om digicert
resource "digicert_certificate" "rsa_certificate" {
  profile_id  = var.digicert_profile_id  # Obtain this from your DigiCert Trust Lifecycle Manager
  common_name = var.common_name
  csr         = data.akamai_cps_csr.my-csr.csr_rsa
  tags        = ["akamai", "terraform", "rsa"]
}

resource "digicert_certificate" "ecdsa_certificate" {
  profile_id  = var.digicert_profile_id  # Obtain this from your DigiCert Trust Lifecycle Manager
  common_name = var.common_name
  csr         = data.akamai_cps_csr.my-csr.csr_ecdsa
  tags        = ["akamai", "terraform", "ecdsa"]
}

resource "akamai_cps_upload_certificate" "upload-cert" {
   enrollment_id                          = akamai_cps_third_party_enrollment.my-enrollment.id
   certificate_rsa_pem                    = digicert_certificate.rsa_certificate.certificate_pem
   trust_chain_rsa_pem                    = digicert_certificate.rsa_certificate.issuer_pem
   certificate_ecdsa_pem                  = digicert_certificate.ecdsa_certificate.certificate_pem
   trust_chain_ecdsa_pem                  = digicert_certificate.ecdsa_certificate.issuer_pem
   acknowledge_post_verification_warnings = var.akamai_acknowledge_post_verification_warnings
   acknowledge_change_management          = var.akamai_acknowledge_change_management
   wait_for_deployment                    = var.akamai_wait_for_deployment
   timeouts {
    default = var.akamai_enrollment_timeout
  }
 }


resource "akamai_cps_upload_certificate" "upload-cert" {
   enrollment_id                          = akamai_cps_third_party_enrollment.my-enrollment.id
   certificate_rsa_pem                    = data.local_file.my_cert_rsa.content
   trust_chain_rsa_pem                    = data.local_file.my_chain_rsa.content
   certificate_ecdsa_pem                  = data.local_file.my_cert_ecdsa.content
   trust_chain_ecdsa_pem                  = data.local_file.my_chain_ecdsa.content
   acknowledge_post_verification_warnings = var.akamai_acknowledge_post_verification_warnings
   acknowledge_change_management          = var.akamai_acknowledge_change_management
   wait_for_deployment                    = var.akamai_wait_for_deployment
   timeouts {
    default = var.akamai_enrollment_timeout
  }
 }
 */
