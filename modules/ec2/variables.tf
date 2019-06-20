variable "instance_name" {}
variable "aws_ami_id" {}

variable "instace_type" {
 type  = "string"
 default = "t3.micro"
 description = "Define instance type"
}

