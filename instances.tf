resource "aws_instance" "windows-1-instance" {
    ami = "ami-09a53ec51d0027c28"
    instance_type = "t2.micro"
    
    subnet_id = aws_subnet.lesson7-subnet-public-1.id

    vpc_security_group_ids = [aws_security_group.lesson7-http-rdp-winrm.id]

    key_name = "KEY-Frankfurt-WinServer2019"

    user_data = file("winrm1.ps") 

    tags = {
        "Name" = "Windows-1-instance"
    }
}

resource "aws_instance" "windows-2-instance" {
    ami = "ami-09a53ec51d0027c28"
    instance_type = "t2.micro"
    
    subnet_id = aws_subnet.lesson7-subnet-public-1.id

    vpc_security_group_ids = [aws_security_group.lesson7-http-rdp-winrm.id]

    key_name = "KEY-Frankfurt-WinServer2019"

    user_data = file("winrm2.ps") 

    tags = {
        "Name" = "Windows-2-instance"
    }
}