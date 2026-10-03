variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "AWS_REGION" {
  description = "Please Enter The Region (ap-south-1, us-east-1, us-west-2)"
}

variable "AMI" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0ac7b260cf76d8865"
    us-east-1  = "ami-0332d564d76dbd8d6"
    us-west-2  = "ami-08b7b9fdd7a1edf3d"

  }
}
