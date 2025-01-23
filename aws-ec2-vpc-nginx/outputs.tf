output "instance_public_ip" {
  description = "The public IP address fo the EC2 instance"
  value = aws_instance.mywebserver.public_ip
}

output "instance_url" {
  description = "This is to access the nginx server"
  value = "http://${aws_instance.mywebserver.public_ip}"
}