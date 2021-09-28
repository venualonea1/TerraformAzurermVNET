

variable "virtual_network" {
  type = object({
    vnet_name = string
    address_space=list(string)
    resource_group_name=list(string)
    subnet_name=string
    address_prefixes= list(string)
  })
}