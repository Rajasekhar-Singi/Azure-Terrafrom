variable "rgname" {
    type = string
    description = "This Rg is created as a part of assignment"
}

variable "loc" {
    type= string
    description = "This Rg_location is created as a part of assignment"
}

variable "tagging" {
    type = object ({
    env = string
    Createdby = string
    })
}

variable "environment" {
    type = string
}
variable "disk1" {
    type =string
}
variable "disk2" {
    type= string
}
variable "disk3" {
    type = string
}
variable "disk4" {
    type = string
}