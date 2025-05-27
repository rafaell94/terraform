#terraform apply -auto-approve -parallelism=1

module certificates{
  for_each = toset(var.akamai_common_names)
  source = "./module"
  akamai_common_name =  "${each.key}"
  akamai_access_token = var.akamai_access_token
  akamai_client_secret = var.akamai_client_secret
  akamai_client_token = var.akamai_client_token
  akamai_host =  var.akamai_host
  digicert_api_key = var.digicert_api_key
  digicert_url = var.digicert_url
}