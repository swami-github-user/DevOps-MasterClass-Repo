resource "aws_instance" "terraform-demo-instance-1" {
  ami           = "ami-0332d564d76dbd8d6"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.main-public-1.id

  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  tags = {

    Name = "terraform-demo-instance"
  }
}

resource "aws_instance" "terraform-demo-instance-2" {
  ami           = "ami-0332d564d76dbd8d6"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.main-public-2.id

  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  tags = {

    Name = "terraform-demo-instance"
  }
}

