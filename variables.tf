variable "region" {
  type = string
}

variable "instance_az" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "server_name" {
  type = string
}
