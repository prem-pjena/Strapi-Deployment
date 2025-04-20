variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "key"
}

variable "image_tag" {
  type = string
}

variable "ecr_repo_name" {
  default = "strapi-app"
}
