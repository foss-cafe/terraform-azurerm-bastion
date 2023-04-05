variable "create_bastion_host" {
  type        = bool
  description = "Do you want to create subnet"
  default     = true
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
}

variable "virtual_network_name" {
  type        = string
  description = "(Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
}

variable "address_prefixes" {
  type        = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}

### public IP

variable "location" {
  type        = string
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "ip_name" {
  type        = string
  description = "(Required) The name of the  network resources . Changing this forces a new resource to be created."
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}

variable "public_ip_edge_zone" {
  type        = string
  description = "(Optional) Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created."
  default     = null
}

variable "service_endpoints" {
  type        = list(string)
  description = "(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, and Microsoft.Web."
  default     = null
}

variable "service_endpoint_policy_ids" {
  type        = list(string)
  description = "(Optional) The list of IDs of Service Endpoint Policies to associate with the subnet."
  default     = null
}


variable "allocation_method" {
  type        = string
  description = "(Optional) Defines the allocation method for this IP address. Possible values are Static or Dynamic."
  default     = "Static"
}

variable "zones" {
  type        = list(string)
  description = "(Optional) A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created."
  default     = null
}

variable "ddos_protection_mode" {
  type        = string
  description = "(Optional) The DDoS protection mode of the public IP. Possible values are Disabled, Enabled, and VirtualNetworkInherited. Defaults to VirtualNetworkInherited."
  default     = "VirtualNetworkInherited"
}

variable "ddos_protection_plan_id" {
  type        = string
  description = "(Optional) The ID of DDoS protection plan associated with the public IP."
  default     = null
}

variable "domain_name_label" {
  type        = string
  description = "(Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system."
  default     = null
}

variable "edge_zone" {
  type        = string
  description = "(Optional) Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created."
  default     = null
}

variable "idle_timeout_in_minutes" {
  type        = number
  description = "(Optional) Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes."
  default     = 4
}

variable "ip_tags" {
  type        = map(string)
  description = "(Optional) A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created."
  default     = {}
}

variable "ip_version" {
  type        = string
  description = "(Optional) The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created."
  default     = "IPv4"
}

variable "public_ip_prefix_id" {
  type        = string
  description = "(Optional) If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created."
  default     = null
}

variable "reverse_fqdn" {
  type        = string
  description = "(Optional) A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN."
  default     = null
}

variable "ip_sku" {
  type        = string
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created."
  default     = "Standard"
}

variable "ip_sku_tier" {
  type        = string
  description = "(Optional) The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional. Changing this forces a new resource to be created."
  default     = "Regional"
}

### azurerm_bastion_host

variable "bastion_host_name" {
  type        = string
  description = "(Required) Specifies the name of the Bastion Host. Changing this forces a new resource to be created."
}

variable "copy_paste_enabled" {
  type        = bool
  description = "(Optional) Is Copy/Paste feature enabled for the Bastion Host. Defaults to true."
  default     = true
}

variable "file_copy_enabled" {
  type        = bool
  description = "(Optional) Is File Copy feature enabled for the Bastion Host. Defaults to false."
  default     = false
}

variable "bastion_host_sku" {
  type        = string
  description = "(Optional) The SKU of the Bastion Host. Accepted values are Basic and Standard. Defaults to Basic."
  default     = "Basic"
}

variable "ipconfig_name" {
  type        = string
  description = "(Required) The name of the IP configuration. Changing this forces a new resource to be created."
}

variable "ip_connect_enabled" {
  type        = bool
  description = "(Optional) Is IP Connect feature enabled for the Bastion Host. Defaults to false."
  default     = false
}

variable "scale_units" {
  type        = number
  description = "(Optional) The number of scale units with which to provision the Bastion Host. Possible values are between 2 and 50. Defaults to 2."
  default     = 2
}

variable "shareable_link_enabled" {
  type        = bool
  description = "(Optional) Is Shareable Link feature enabled for the Bastion Host. Defaults to false."
  default     = false
}

variable "tunneling_enabled" {
  type        = bool
  description = "(Optional) Is Tunneling feature enabled for the Bastion Host. Defaults to false."
  default     = false
}
