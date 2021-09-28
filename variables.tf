variable "vnet_location" {
  type = string
}
variable "vnet_name" {
  type = string
}
variable "vnet_address_space" {
  type = list(string)
}
variable "resource_group_name" {
  type = string
}
variable "subnet_name" {
  type = string
}
variable "snet_address_prefixes" {
  type = list(string)
}