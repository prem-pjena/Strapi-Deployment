provider "aws" {
  region = var.region
}
resource "aws_instance" "strapi_ec2" {
  ami                    = "ami-084568db4383264d4" 
  instance_type          = var.instance_type
  key_name               = var.key_name
  associate_public_ip_address = true

  user_data = templatefile("${path.module}/user_data.sh", {
    image_tag     = var.image_tag
    repo_url = var.repo_url
    region        = var.region
  })

  tags = {
    Name = "Strapi-Instance"
  }
}
