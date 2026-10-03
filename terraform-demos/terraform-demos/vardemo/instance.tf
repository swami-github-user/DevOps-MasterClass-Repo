resource "aws_instance" "terraform-demo-instance" {
  ami           = var.AMI[var.AWS_REGION]
  instance_type = "t3.micro"

}
