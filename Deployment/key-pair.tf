resource "aws_key_pair" "ruben_key" {
  key_name   = var.key_name
  public_key = file("/home/kiyana/.ssh/project-1.pem.pub") # Replace with the path to your public key
}