# Creating Load Balancer
resource "aws_lb" "external_alb" {
  name               = "External-LB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.websg.id]
  subnets            = [aws_subnet.publicsubnet1.id, aws_subnet.publicsubnet2.id]
}

# Creating Target Group
resource "aws_lb_target_group" "target_elb" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id

  health_check {
    path     = "/health"
    port     = 80
    protocol = "HTTP"
  }
}

# Attaching Instances to Target Group
resource "aws_lb_target_group_attachment" "ecomm" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.ecomm.id
  port             = 80

  depends_on = [
    aws_lb_target_group.target_elb,
    aws_instance.ecomm,
  ]
}

resource "aws_lb_target_group_attachment" "food" {
  target_group_arn = aws_lb_target_group.target_elb.arn
  target_id        = aws_instance.food.id
  port             = 80

  depends_on = [
    aws_lb_target_group.target_elb,
    aws_instance.food,
  ]
}

# Creating Listener for Load Balancer
resource "aws_lb_listener" "listener_elb" {
  load_balancer_arn = aws_lb.external_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_elb.arn
  }
}
