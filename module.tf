provider "aws" {
  profile = "default"
  region = "us-east-1"
}
resource "aws_launch_configuration" "as_conf" {
  name_prefix   = "terraform-lc-example-"
  image_id      = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
}
resource "aws_autoscaling_group" "bar" {
  availability_zones = ["us-east-1c"]
  name                 = "terraform-asg-example"
  launch_configuration = aws_launch_configuration.as_conf.name
    desired_capacity   = 1
    min_size             = 1
    max_size             = 2
}
