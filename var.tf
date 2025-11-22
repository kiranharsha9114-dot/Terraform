variable "iname" {
  type    = string
  default = "terra-server"
}

variable "ami_id" {
  type    = string
  default = "ami-0fa3fe0fa7920f68e"
}

variable "itype" {
  type    = string
  default = "t3.micro"
}

variable "ivolume" {
  type    = number
  default = 10
}

