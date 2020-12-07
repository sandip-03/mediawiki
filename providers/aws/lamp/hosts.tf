resource "local_file" "inventory" {
  filename = "./hosts"
  content     = <<-EOF
    [localhost]
    localhost ansible_connection=local

    [lamp]
    ${aws_instance.lamp_instance.private_ip}    machine_name=${aws_instance.lamp_instance.private_dns}

    [all_vms:children]
    lamp

    EOF
}