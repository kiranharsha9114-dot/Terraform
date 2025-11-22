output "instance_imp_keys" {
  value = [aws_instance.myec2[0].id, aws_instance.myec2[1].public_ip, aws_instance.myec2[0].private_ip]

}

