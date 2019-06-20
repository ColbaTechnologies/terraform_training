data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    }
    filter {
    name   = "virtualization-type"
    values = ["hvm"]
    }
    owners = ["099720109477"] # Canonical
}



module "my_ec2_module" {
  source                 = "./modules/ec2"
  instance_name          = "YOUR_NAME"
  aws_ami_id             = "${data.aws_ami.ubuntu.id}"
  instace_type           = "${var.instace_type}"
}

