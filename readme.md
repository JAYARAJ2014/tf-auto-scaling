# Example : Auto Scaling Group with Terraform.

This example is developed to explain to my peers and friends.

Auto Scaling Group allows us to specify min, max and ideal count of Ec2 instances. ASG requires a launch template to identify what type of resource needs to be luanched.

## 1: Create a Launch template

`launch-template.tf`
NOTE: When a network interface is provided, the security groups must be a part of it. Hence network interface is commented out.

## 2: Create an autoscaling group

`asg.tf`

## 3: `terraform plan` && `terraform apply --auto-approve`

## 4: `terraform destroy`

Destroying ASG will destroy the instances as well.
