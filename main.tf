data "aws_instance" "target_instance" {
  filter {
    name   = "tag:Name"
    values = [var.tag]  # Replace with the tag name of your instance
  }
}

resource "null_resource" "reboot_vm" {
  provisioner "local-exec" {
    command = "aws ec2 reboot-instances --instance-ids ${data.aws_instance.target_instance.id} --region ${var.region}"
  }
}