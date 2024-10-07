provider "aws"{

      region = "us-east-1"
}

resource "aws_instance" "vdi" {
    ami ="ami-0fff1b9a61dec8a5f"
    instance_type = "t2.micro" 
}
output "instance_id" {
    value = aws_instance.vdi.id
}

output "instance_public_ip" {
    value = aws_instance.vdi.public_ip
}
