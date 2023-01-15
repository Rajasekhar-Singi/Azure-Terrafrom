variable "organization" {
  type = string
}
variable "environment" {
  type = string
}
variable "application" {
  type = string
}
variable "tier" {
  type = string
}
variable "rgname" {
  type        = string
  description = "This resource group for practice"
}
variable "location" {
  type        = string
  description = "This region for resource group RG24 practice"
}
variable "tagging" {
  type = object({
    CreatedBy  = string
    CostCenter = number
    Org        = string
  })
}
variable "pipname" {
  type        = string
  description = "This pip for resource group RG24"
}

variable "nsg" {
  type        = string
  description = "This nsg for resource group RG24"
}
variable "vnetname" {
  description = "This vnet for resource group RG24"
}
variable "address_space" {
  type = list(any)
}
variable "subnetname" {
  description = "This subnet for Vnet"
}

variable "address_prefixes" {
  type = list(any)
}
variable "nicname" {
  type = string
}
variable "VMname" {
  type = string
}
variable "vm_size" {

}
variable "computer_name" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type = string
}
