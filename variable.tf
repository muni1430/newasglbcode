variable "name_prefix"{
type = string
default = "terraform-lc-example-"
}
variable "aws_instances"{
  type = string
  default = "i-086045db590bf98f8"
}
variable "image_id"{
  type = string
  default = "ami-04505e74c0741db8d"
}
variable "instance_type"{
  type = string
  default = "t2.micro"
}
variable "availability_zones" {
  type = list(string)
  default = ["us-east-1c"]
}
variable "vpc_id" {
  type = string
  default = "vpc-6014600b"
}
variable "target_id" {
  type = string
}
variable "protocol" {
  type = string
  default = "HTTP"
}
variable "subnets" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
  default = ["sg-03769a97218bb6646"]
}
variable "load_balancer_type" {
  type = string
  default = "application"
}
