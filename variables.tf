variable "dmarc_rua" {
  description = "Email address for capturing DMARC aggregate reports"
  type        = string
}

variable "domain_name" {
  description = "The domain name to configure SES"
  type        = string
}

variable "enable_verification" {
  description = "Control whether or not to verify SES DNS records"
  type        = string
  default     = true
}

variable "from_addresses" {
  description = "List of email addresses to catch bounces and rejections"
  type        = list(string)
}

variable "mail_from_domain" {
  description = " Subdomain (of the route53 zone) which is to be used as MAIL FROM address"
  type        = string
}

variable "receive_s3_bucket" {
  description = "Name of the S3 bucket to store received emails."
  type        = string
}

variable "receive_s3_prefix" {
  description = "The key prefix of the S3 bucket to store received emails"
  type        = string
}

variable "route53_zone_id" {
  description = "Route53 host zone ID to enable SES"
  type        = string
}

variable "ses_rule_set" {
  description = "Name of the SES rule set to associate rules with"
  type        = string
}

variable "enable_incoming_email" {
  description = "Control whether or not to handle incoming emails"
  type        = bool
  default     = true
}

variable "enable_spf_record" {
  description = "Control want to create SPF records for this domain. If your domain already has an SPF record, you can add the following statement: include:amazonses.com"
  type        = bool
  default     = true
}

variable "spf_txt_record" {
  description = "SPF record TXT record to authorize Amazone SES to send maind for your domain. If you use other third-party email services, you can pass in a custom SPF TXT record."
  type        = string
  default     = "v=spf1 include:amazonses.com -all"
}
