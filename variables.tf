variable "virtual_network" {
  type = object({
    vnet_name = string
    address_space=list(string)
    subnet_name=string
    address_prefixes= list(string)
  })
}

variable "resource_group_name" {}