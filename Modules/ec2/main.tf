#Horizon Capital Bank - HCB

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "HCB-Bank-Web"
  }
}
