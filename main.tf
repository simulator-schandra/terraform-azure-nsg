module "nsg" {
  source = "./module"
  nsg_name = "simulator-nsg"
  nsg_location = "South India"
  rg_name = "simulator-rg"
  nsg_rule = [
    {
      name                       = "ssh_access_rule"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
  tags = {
    "Environment" = "Staging"
  }

}
