resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  provisioner "file" {
    source      = "../ansible"
    destination = "/home/ubuntu/"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("C:/Users/Mihir/Downloads/mihir-devops.pem")
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y ansible",
      "sudo apt install -y python3-pip",
      "pip3 install boto boto3",
      "cd /home/ubuntu/ansible && sudo ansible-playbook playbook.yml -c local"
    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("C:/Users/Mihir/Downloads/mihir-devops.pem")
      host        = self.public_ip
    }
  }

  tags = {
    Name        = "Ansible-Docker-Instance"
    Environment = local.environment
    Project     = local.project_name
  }
}

# Security Group
resource "aws_security_group" "web_sg" {

  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
