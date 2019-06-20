data "template_file" "my_template" {
  template = "${file("${path.module}/template/user_data.sh")}"

  vars {
    instance_name        = "${var.instance_name}"
  }
}
