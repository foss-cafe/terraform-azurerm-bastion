# Terraform module for Azure Bastion Host

## How to use it as a module

```hcl
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_subnets"></a> [subnets](#module\_subnets) | foss-cafe/subnets/azurerm | 1.0.2 |

## Resources

| Name | Type |
|------|------|
| [azurerm_bastion_host.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host) | resource |
| [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | (Required) The address prefixes to use for the subnet. | `list(string)` | n/a | yes |
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | (Optional) Defines the allocation method for this IP address. Possible values are Static or Dynamic. | `string` | `"Static"` | no |
| <a name="input_bastion_host_name"></a> [bastion\_host\_name](#input\_bastion\_host\_name) | (Required) Specifies the name of the Bastion Host. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_bastion_host_sku"></a> [bastion\_host\_sku](#input\_bastion\_host\_sku) | (Optional) The SKU of the Bastion Host. Accepted values are Basic and Standard. Defaults to Basic. | `string` | `"Basic"` | no |
| <a name="input_copy_paste_enabled"></a> [copy\_paste\_enabled](#input\_copy\_paste\_enabled) | (Optional) Is Copy/Paste feature enabled for the Bastion Host. Defaults to true. | `bool` | `true` | no |
| <a name="input_create_bastion_host"></a> [create\_bastion\_host](#input\_create\_bastion\_host) | Do you want to create subnet | `bool` | `true` | no |
| <a name="input_ddos_protection_mode"></a> [ddos\_protection\_mode](#input\_ddos\_protection\_mode) | (Optional) The DDoS protection mode of the public IP. Possible values are Disabled, Enabled, and VirtualNetworkInherited. Defaults to VirtualNetworkInherited. | `string` | `"VirtualNetworkInherited"` | no |
| <a name="input_ddos_protection_plan_id"></a> [ddos\_protection\_plan\_id](#input\_ddos\_protection\_plan\_id) | (Optional) The ID of DDoS protection plan associated with the public IP. | `string` | `null` | no |
| <a name="input_domain_name_label"></a> [domain\_name\_label](#input\_domain\_name\_label) | (Optional) Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system. | `string` | `null` | no |
| <a name="input_edge_zone"></a> [edge\_zone](#input\_edge\_zone) | (Optional) Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created. | `string` | `null` | no |
| <a name="input_file_copy_enabled"></a> [file\_copy\_enabled](#input\_file\_copy\_enabled) | (Optional) Is File Copy feature enabled for the Bastion Host. Defaults to false. | `bool` | `false` | no |
| <a name="input_idle_timeout_in_minutes"></a> [idle\_timeout\_in\_minutes](#input\_idle\_timeout\_in\_minutes) | (Optional) Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes. | `number` | `4` | no |
| <a name="input_ip_connect_enabled"></a> [ip\_connect\_enabled](#input\_ip\_connect\_enabled) | (Optional) Is IP Connect feature enabled for the Bastion Host. Defaults to false. | `bool` | `false` | no |
| <a name="input_ip_name"></a> [ip\_name](#input\_ip\_name) | (Required) The name of the  network resources . Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_ip_sku"></a> [ip\_sku](#input\_ip\_sku) | (Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_ip_sku_tier"></a> [ip\_sku\_tier](#input\_ip\_sku\_tier) | (Optional) The SKU Tier that should be used for the Public IP. Possible values are Regional and Global. Defaults to Regional. Changing this forces a new resource to be created. | `string` | `"Regional"` | no |
| <a name="input_ip_tags"></a> [ip\_tags](#input\_ip\_tags) | (Optional) A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created. | `map(string)` | `{}` | no |
| <a name="input_ip_version"></a> [ip\_version](#input\_ip\_version) | (Optional) The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. | `string` | `"IPv4"` | no |
| <a name="input_ipconfig_name"></a> [ipconfig\_name](#input\_ipconfig\_name) | (Required) The name of the IP configuration. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location/region where the virtual network is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_public_ip_edge_zone"></a> [public\_ip\_edge\_zone](#input\_public\_ip\_edge\_zone) | (Optional) Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created. | `string` | `null` | no |
| <a name="input_public_ip_prefix_id"></a> [public\_ip\_prefix\_id](#input\_public\_ip\_prefix\_id) | (Optional) If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_reverse_fqdn"></a> [reverse\_fqdn](#input\_reverse\_fqdn) | (Optional) A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN. | `string` | `null` | no |
| <a name="input_scale_units"></a> [scale\_units](#input\_scale\_units) | (Optional) The number of scale units with which to provision the Bastion Host. Possible values are between 2 and 50. Defaults to 2. | `number` | `2` | no |
| <a name="input_service_endpoint_policy_ids"></a> [service\_endpoint\_policy\_ids](#input\_service\_endpoint\_policy\_ids) | (Optional) The list of IDs of Service Endpoint Policies to associate with the subnet. | `list(string)` | `null` | no |
| <a name="input_service_endpoints"></a> [service\_endpoints](#input\_service\_endpoints) | (Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, and Microsoft.Web. | `list(string)` | `null` | no |
| <a name="input_shareable_link_enabled"></a> [shareable\_link\_enabled](#input\_shareable\_link\_enabled) | (Optional) Is Shareable Link feature enabled for the Bastion Host. Defaults to false. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_tunneling_enabled"></a> [tunneling\_enabled](#input\_tunneling\_enabled) | (Optional) Is Tunneling feature enabled for the Bastion Host. Defaults to false. | `bool` | `false` | no |
| <a name="input_virtual_network_name"></a> [virtual\_network\_name](#input\_virtual\_network\_name) | (Required) The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_zones"></a> [zones](#input\_zones) | (Optional) A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created. | `list(string)` | `null` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
