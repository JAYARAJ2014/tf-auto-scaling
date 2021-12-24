resource "aws_launch_template" "LT1" {
  name                                 = "LT1"
  image_id                             = "ami-0ed9277fb7eb570c9"
  instance_initiated_shutdown_behavior = "terminate"
  instance_type                        = "t2.micro"

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  monitoring {
    enabled = true
  }

  #   network_interfaces {
  #     associate_public_ip_address = true
  #   }

  vpc_security_group_ids = ["sg-0d968268d84953238"]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "test"
    }
  }

  user_data = filebase64("${path.module}/user-data.sh")
}
