resource "aws_instance" "terraform-demo-instance" {
  ami           = var.AMI[var.AWS_REGION]
  instance_type = "t3.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.terraform-demo-instance.private_ip} >> private_ip.txt"

  }

}
