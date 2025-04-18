variable "key_name" {
    default = "mihir-devops"
    description = "This this common key name"
    type = string
}

variable "instance_type"{
    default = "t3.micro"
    description = "This the default instance type"
    type = string
}

variable "ami_id"{
    default = "ami-09a9858973b288bdd"
    type = string
}
