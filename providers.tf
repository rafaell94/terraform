terraform {
  required_providers {
    akamai = {
      source  = "akamai/akamai"
      version = "7.1.0"
    }
    digicert = {
      source  = "digicert/digicert"
    }
    local = {     
      source = "hashicorp/local"
      version = "~> 2.5"
      } 
  }
}

provider "akamai" {
  # Configuration options
  config {
    client_secret = var.akamai_client_secret
    host          = var.akamai_host
    access_token  = var.akamai_access_token
    client_token  = var.akamai_client_token
    account_key   = var.akamai_account_key
  }
}

provider "digicert" {
  url     = var.digicert_url
  api_key = var.digicert_api_key
}



