data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "aws-study-ec2" {
  ami                         = data.aws_ami.al2023.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.aws-study-subnet-1a.id
  vpc_security_group_ids      = [aws_security_group.sg-ec2.id]
  associate_public_ip_address = true
  key_name                    = "saito"
  monitoring                  = false

  tags = {
    Name = "aws-study-ec2"
  }
}

resource "aws_instance" "aws-study-ec2-git" {
  ami                         = data.aws_ami.al2023.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.aws-study-subnet-1a.id
  vpc_security_group_ids      = [aws_security_group.sg-ec2.id]
  associate_public_ip_address = true
  key_name                    = "saito"
  monitoring                  = false

  tags = {
    Name = "aws-study-ec2-git"
  }
}
