output "instance_public_ip" {
  value = aws_instance.testEC2.public_ip
}

output "instance_id" {
  value = aws_instance.testEC2.id
}
