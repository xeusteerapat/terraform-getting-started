# Instances
resource "aws_instance" "nginx1" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  tags                   = local.common_tags

  user_data = <<EOF
  #! /bin/bash
  sudo amazon-linux-extras install -y nginx1
  sudo service nginx start
  sudo rm /usr/share/nginx/html/index.html
  echo '<html><head><title>Xeus Team Server 1</title></head><body style="background-color: cyan"><h1>Hi, Terraform</h1></body></html>' | sudo tee /usr/share/nginx/html/index.html
  EOF
}

resource "aws_instance" "nginx2" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.subnet2.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]

  tags = local.common_tags

  user_data = <<EOF
  #! /bin/bash
  sudo amazon-linux-extras install -y nginx1
  sudo service nginx start
  sudo rm /usr/share/nginx/html/index.html
  echo '<html><head><title>Xeus Team Server 2</title></head><body style="background-color: cyan"><h1>Hi, Terraform</h1></body></html>' | sudo tee /usr/share/nginx/html/index.html
  EOF
}
