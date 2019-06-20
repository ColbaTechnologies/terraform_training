output "ami_name" {
   value = "${aws_instance.web.id}"
}

output "my_template" {
  value = ["${data.template_file.my_template.rendered}"]
}
