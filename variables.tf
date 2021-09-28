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


#New Way of Executing Variables


variable "virtual_network" {
  type = object({
    vnet_name = string
    address_space=list(string)
    resource_group_name=list(string)
    subnet_name=string
    address_prefixes= list(string)
  })
}
