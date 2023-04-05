module "subnets" {
  source  = "foss-cafe/subnets/azurerm"
  version = "1.0.2"
  count   = var.create_bastion_host ? 1 : 0

  name                      = "AzureBastionSubnet"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_name
  address_prefixes          = var.address_prefixes
  associate_nsg             = false
  network_security_group_id = null
}


resource "azurerm_public_ip" "this" {
  count = var.create_bastion_host ? 1 : 0

  name                    = format("%s-bastion-ip", var.ip_name)
  location                = var.location
  resource_group_name     = var.resource_group_name
  allocation_method       = var.allocation_method
  zones                   = var.zones
  ddos_protection_mode    = var.ddos_protection_mode
  ddos_protection_plan_id = var.ddos_protection_plan_id
  domain_name_label       = var.domain_name_label
  edge_zone               = var.public_ip_edge_zone
  idle_timeout_in_minutes = var.idle_timeout_in_minutes
  ip_tags                 = var.ip_tags
  ip_version              = var.ip_version
  public_ip_prefix_id     = var.public_ip_prefix_id
  reverse_fqdn            = var.reverse_fqdn
  sku                     = var.ip_sku
  sku_tier                = var.ip_sku_tier

  tags = merge(
    {
      "Name" = format("%s-bastion-ip", var.ip_name)
    },
    var.tags
  )

  lifecycle {
    create_before_destroy = false
  }
}

resource "azurerm_bastion_host" "this" {
  count = var.create_bastion_host ? 1 : 0

  name                = var.bastion_host_name
  resource_group_name = var.resource_group_name
  location            = var.location
  copy_paste_enabled  = var.copy_paste_enabled
  file_copy_enabled   = var.file_copy_enabled
  sku                 = var.bastion_host_sku

  ip_configuration {
    name                 = var.ipconfig_name
    public_ip_address_id = azurerm_public_ip.this[0].id
    subnet_id            = module.subnets[0].id
  }

  ip_connect_enabled     = var.ip_connect_enabled
  scale_units            = var.scale_units
  shareable_link_enabled = var.shareable_link_enabled
  tunneling_enabled      = var.tunneling_enabled

  tags = var.tags

  depends_on = [
    azurerm_public_ip.this,
    module.subnets
  ]
}
