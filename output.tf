output "lb_dns_name" {
  description = "THE DNS name of the LB"
  value       = aws_lb.external_alb.dns_name
}
