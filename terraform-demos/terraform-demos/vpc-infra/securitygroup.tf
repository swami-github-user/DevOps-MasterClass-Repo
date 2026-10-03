resource "aws_security_group" "allow-ssh" {

  vpc_id      = aws_vpc.main.id
  description = "allow ssh for anyone"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow-ssh"
  }

}
