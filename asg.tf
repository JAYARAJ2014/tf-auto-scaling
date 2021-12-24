resource "aws_autoscaling_group" "ASG1" {
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  desired_capacity   = 2
  max_size           = 4
  min_size           = 2

  launch_template {
    id      = aws_launch_template.LT1.id
    version = "$Latest"
  }
}
