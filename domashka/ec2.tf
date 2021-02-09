resource "aws_instance" "ubuntu-ITEA-1" {
    ami = "ami-0932440befd74cdba"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    subnet_id = aws_subnet.itea-subnet-1.id
    vpc_security_group_ids = [aws_security_group.itea-ubnt-sg.id]
    key_name = "Frankfurt-Linux-ubuntu"
    user_data = file("docker-wordpress.sh") 
    tags = {
        "Name" = "ubuntu-ITEA-1"
    }
}