resource "aws_instance" "ecomm" {
  ami                         = "ami-07761f3ae34c4478d"
  instance_type               = "t2.micro"
  key_name                    = "MK"
  vpc_security_group_ids      = [aws_security_group.websg.id]
  subnet_id                   = aws_subnet.publicsubnet1.id
  associate_public_ip_address = true
  user_data                   = file("data1.sh")

  tags = {
    Name = "ec2-1"
  }
}
