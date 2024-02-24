resource "aws_launch_configuration" "lc-asg" {
  name            = "launch-config"
  image_id        = "ami-0cf10cdf9fcd62d37"
  instance_type   = "t2.micro"
  key_name        = "terraform"
  security_groups = [aws_security_group.websg.id]
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity          = 3
  max_size                  = 5
  min_size                  = 2
  vpc_zone_identifier       = [aws_subnet.publicsubnet1.id, aws_subnet.publicsubnet2.id]
  launch_configuration      = aws_launch_configuration.lc-asg.name // Corrected reference
  health_check_type         = "ELB"
  health_check_grace_period = 60
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "Auto Scaling"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_attachment" "as-1b" {
  autoscaling_group_name = aws_autoscaling_group.asg.name
  lb_target_group_arn    = aws_lb_target_group.target_elb.arn
}
