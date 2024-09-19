resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ruben_key.key_name
  vpc_security_group_ids = [aws_security_group.webSG.id]
  subnet_id              = aws_subnet.ruben_subnet.id
  user_data              = filebase64("user-data.sh")
  #TODO  Ansible

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/home/kiyana/.ssh/project-1.pem") # Replace with the path to your private key
    host        = self.public_ip
  }

  tags = {
    Name = "Server App-1"
  }
}