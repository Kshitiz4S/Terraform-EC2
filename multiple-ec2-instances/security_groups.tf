resource "aws_security_group" "multi-instance-sg" {

  #Inbound rule for HTTP
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Inbound rule for SSH
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Outbount rule
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"  #"-1" means applicable for all the protocols
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "multi-instance-sg"
  }
}