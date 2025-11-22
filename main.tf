resource "aws_instance" "myec2" {
  tags = {
    Name = var.iname
  }

  ami                    = var.ami_id
  instance_type          = var.itype
  availability_zone      = "us-east-1b"
  key_name               = aws_key_pair.mykeypair.key_name
  vpc_security_group_ids = [aws_security_group.mysg.id]
  root_block_device {
    volume_size = var.ivolume
  }
  count = 2
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "terra-key"
  public_key = file("/root/.ssh/id_rsa.pub")
}

resource "aws_security_group" "mysg" {
  description = "This allows 80 and 22 ports"
  name        = "my-sg"

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

