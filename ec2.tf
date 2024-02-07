resource "aws_instance" "ec2-controller" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro" #t2.medium is minimum requirement to use k8's || change when you want to use k8's 
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name = "sagec2"

  tags = {
    "Name" = "ec2-controller"
  }

}

resource "aws_instance" "ec2-worker1" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro" #t2.medium is minimum requirement to use k8's || change when you want to use k8's 
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name = "sagec2"

  tags = {
    "Name" = "ec2-worker2"
  }

}

resource "aws_instance" "ec2-worker2" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro" #t2.medium is minimum requirement to use k8's || change when you want to use k8's 
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_custom.id]
  key_name = "sagec2"

  tags = {
    "Name" = "ec2-worker2"
  }

}