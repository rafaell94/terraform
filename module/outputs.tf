
output "csr_rsa_pem" {
  value = data.akamai_cps_csr.my-csr.csr_rsa

}
/*
output "cert_rsa_pem" {
  value = digicert_certificate.rsa_certificate.certificate_pem
}

output "chain_rsa_pem" {
  value = digicert_certificate.rsa_certificate.issuer_pem
}
*/
output "csr_ecdsa_pem" {
  value = data.akamai_cps_csr.my-csr.csr_rsa
}
/*
output "cert_ecdsa_pem" {
  value = digicert_certificate.rsa_certificate.certificate_pem
}

output "chain_ecdsa_pem" {
  value = digicert_certificate.rsa_certificate.issuer_pem
}
*/