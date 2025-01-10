
variable "access_key" {
  description = "access key"
  sensitive = true
}

variable "secret_key" {
  description = "secret key"
  sensitive = true
}

variable "region" {
  default = "us-east-1"
}

variable "tag" {
  description = "Provide the tag value of vm want to restart"
}

variable "action" {
  description = "Action to perform on the EC2 instance. Can be 'start' or 'stop'."
}