resource "aws_instance" "myserver" {
  ami = "ami-08eb150f611ca277f"
  instance_type = "t3.micro"
  # subnet_id = aws_subnet.public-subnet.id
  vpc_security_group_ids = [aws_security_group.multi-instance-sg.id]
  # associate_public_ip_address = true
  key_name = "devops"
  tags = {
    Name = var.instance_name[count.index]
  }
  count = 3
}
