resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ruben_key.key_name
  vpc_security_group_ids = [aws_security_group.webSG.id]
  subnet_id              = aws_subnet.ruben_subnet.id

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/home/kiyana/.ssh/project-1.pem") # Replace with the path to your private key
    host        = self.public_ip
  }

  #TODO  Ansible

  # # Instala Docker en la instancia EC2
  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Instalando Docker...'",
  #     "sudo apt update -y",
  #     "sudo apt install -y docker.io",
  #     "sudo systemctl start docker",
  #     "sudo systemctl enable docker",
  #     "sudo usermod -aG docker ec2-user",
  #   ]
  # }

  # # Provisioner para ejecutar el contenedor desde Docker Hub
  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Ejecutando la aplicación Flask desde Docker Hub...'",
  #     # Asegúrate de que Docker esté instalado y ejecuta el contenedor Flask
  #     "sudo docker pull rubenlopsol/flask-app:v1.0.0",
  #     "sudo docker run -d -p 80:5000 rubenlopsol/flask-app:v1.0.0",
  #   ]
  # }

  tags = {
    Name = "Server App-1"
  }

}