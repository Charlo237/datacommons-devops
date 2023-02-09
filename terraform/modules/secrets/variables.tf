variable "app" {
  description = "name of the app"
  type        = string
}
variable "region" {
  description = "aws region to use for this resource"
  type = string
  default = "us-east-1"
}

variable "secret_values" {
  type = map(object({
    secretKey = string
    secretValue = map(string)
    description = string
  }))
}
variable "secret_values" {
  type = map(object({
    description.             = string
    secretKey                = string
    secretValue              = {
     neo4j_user              = string
     neo4j_password          = string
     neo4j_ip                = string
     indexd_url              = string
     sumo_collector_endpoint = string
    }
  }))
}
