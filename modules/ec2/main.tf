
resource "aws_instance" "web" {
    ami           = "${var.aws_ami_id}"
    instance_type = "${var.instace_type}"

    tags = {
        Name = "${var.instance_name}"
    }
}