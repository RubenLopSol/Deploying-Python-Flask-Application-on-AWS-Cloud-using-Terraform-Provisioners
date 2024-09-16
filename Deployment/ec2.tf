resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ruben_key.key_name
  vpc_security_group_ids = [aws_security_group.webSG.id]
  subnet_id              = aws_subnet.ruben_subnet.id

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("/home/kiyana/.ssh/project-1.pem") # Replace with the path to your private key
    host        = self.public_ip
  }

  # # Instala Docker en la instancia EC2
  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Instalando Docker...'",
  #     "sudo apt update -y",
  #     "sudo apt install -y docker.io",  # Instala Docker
  #     "sudo systemctl start docker",    # Inicia Docker
  #     "sudo systemctl enable docker",   # Activa Docker al iniciar el sistema
  #     "sudo usermod -aG docker ubuntu", # Añade el usuario 'ubuntu' al grupo Docker
  #   ]
  # }

  # # Provisioner para ejecutar el contenedor desde Docker Hub
  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Ejecutando la aplicación Flask desde Docker Hub...'",
  #     # Asegúrate de que Docker esté instalado y ejecuta el contenedor Flask
  #     "sudo docker pull your-dockerhub-username/your-flask-app:latest",              # Cambia por tu imagen en Docker Hub
  #     "sudo docker run -d -p 80:5000 your-dockerhub-username/your-flask-app:latest", # Corre el contenedor y expone el puerto 5000 al puerto 80 de la instancia
  #   ]
  # }

  tags = {
    Name = "Server App-1"
  }

}