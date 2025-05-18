variable "ami" {
    default = {
        "projectA" = "ami-0e35ddab05955cf57"
        "projectB" = "ami-084568db4383264d4"
    }
  type = map(string)
  description = "projectA-ap-south-1, projectB-us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
  type = string
}

variable "region" {
  default = {
    "projectA" = "ap-south-1"
    "projectB" = "us-east-1"
  }
}