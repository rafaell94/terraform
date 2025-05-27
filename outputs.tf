
output "csr_rsa_pem" {
  #value = module.certificates.csr_rsa_pem
  value = { for cert in var.akamai_common_names : cert => module.certificates[cert].csr_rsa_pem }
}
/*
output "cert_rsa_pem" {
  value = module.certificates.cert_rsa_pem
}

output "chain_rsa_pem" {
  value = module.certificates.chain_rsa_pem
}
*/
output "csr_ecdsa_pem" {
  value = { for cert in var.akamai_common_names : cert => module.certificates[cert].csr_ecdsa_pem }
}

/*
output "cert_ecdsa_pem" {
  value = module.certificates.cert_ecdsa_pem
}

output "chain_ecdsa_pem" {
  value = module.certificates.chain_ecdsa_pem
}
*/