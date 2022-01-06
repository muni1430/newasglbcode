variable "name_lb" {
type = string
default = "name_lb"
}
variable "load_balancer_type"{
  type = string 
  default = "load_balancer_type"
}
variable "security_groups" {
  type = string
}
variable "subnets" {
  type = string 
}
variable "name_TG"{
type = string
}
variable "protocol"{
type = string
}
variable "vpc_id"{
  type = string
}

