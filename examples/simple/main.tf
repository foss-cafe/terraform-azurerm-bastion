module "bastionhost" {
  source               = "../../"
  create_bastion_host  = true
  ip_name              = "terraform-test"
  resource_group_name  = "terraform-test"
  virtual_network_name = "terraform-test"
  address_prefixes     = ["10.0.100.0/24"]
  location             = "East US"
  bastion_host_name    = "terraform-test-bastionhost"

  ipconfig_name = "bastionIpConfig"

}