resource "tls_private_key" "demo_key" {

  algorithm = "RSA"
  rsa_bits  = 4096

}

resource "aws_key_pair" "demo_key" {

  key_name = "terraform-remote-exec-demo-key"

  public_key = tls_private_key.demo_key.public_key_openssh

}

resource "aws_instance" "web" {

  ami = "ami-0332d564d76dbd8d6"

  instance_type = "t3.micro"

  key_name = aws_key_pair.demo_key.key_name


  provisioner "remote-exec" {

    inline = [
      "sudo dnf install -y httpd",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd",
      "echo 'Hello from Terraform updated' | sudo tee /var/www/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = tls_private_key.demo_key.private_key_pem
      host        = self.public_ip
      timeout     = "5m"
    }

  }
}













