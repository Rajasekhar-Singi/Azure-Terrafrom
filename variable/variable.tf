variable "rgname" {
    type = string
    default = "variablerg"
    description = "this is resource group for managed disk"
    }

variable "loc" {
    type = string
    default = "EAst US"
    description = "this is region for managed disk"
    }

variable "diskname" {
    type = string
    default = "testdisk1"
    description = "this is disk name for managed disk"
    }
variable "disksize" {
    description = "enter value in GB"
    #default = "200"
}
variable "satype" {
    #default = "StandardSSD_ZRS"
    description = "Standard_LRS, StandardSSD_ZRS, Premium_LRS, PremiumV2_LRS, Premium_ZRS, StandardSSD_LRS or UltraSSD_LRS."
}
