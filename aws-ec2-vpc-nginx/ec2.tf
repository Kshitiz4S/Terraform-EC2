resource "aws_instance" "mywebserver" {
    ami = "ami-08eb150f611ca277f"
    instance_type = "t3.micro"
    subnet_id = aws_subnet.public-subnet.id
    vpc_security_group_ids = [aws_security_group.nginx-sg.id]
    associate_public_ip_address = true  #Assignes public IP address
    key_name = "devops" #Name of a pem file

    user_data = <<-EOF
                #!/bin/bash
                sudo apt install nginx -y
                sudo systemctl start nginx
                EOF

    tags = {
      Name = "SampleServer"
    }
}