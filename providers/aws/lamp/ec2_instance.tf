resource "aws_instance" "lamp_instance" {
  ami           = "${var.ami_id}"
  instance_type = "${var.lamp_instance_type}"
  key_name = "${var.ssh_key}"
  subnet_id = "${var.ec2_subnet_id}"
  vpc_security_group_ids = var.default_security_groups
  root_block_device {
    volume_size = 30
    delete_on_termination = true
  }
  volume_tags = {
    Name = "lamptest"
  }
  tags = {
    Name = "lamptest"
      }
}