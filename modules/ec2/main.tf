provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  default_tags {
    tags = {
      Owner = var.resource_owner
    }
  }
}

# Create Security Group
resource "aws_security_group" "server_sg" {
  name = var.sec_group_name
  vpc_id = var.vpc_id

  # To Allow SSH Transport
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  # To Allow Port 80 Transport
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}

data "cloudinit_config" "server_config" {
  gzip          = true
  base64_encode = true
  part {
    content_type = "text/cloud-config"
    content = templatefile("${path.module}/server.yml", {
      header: aws_security_group.server_sg.id
    })
  }
}

resource "aws_instance" "server_instance" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  key_name = var.aws_key_name
  
  
  root_block_device {
    delete_on_termination = true
    volume_size = var.instance_disk_size
    volume_type = var.volume_type
  }

  get_password_data = false
  monitoring        = false
  
  vpc_security_group_ids = [aws_security_group.server_sg.id]
  user_data = data.cloudinit_config.server_config.rendered

  tags = {
    Name = var.server_name
  
  }
}