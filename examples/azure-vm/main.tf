provider "azurerm" {
}

module "densify" {
  source  = "../.."

  densify_recommendations = "${var.densify_recommendations}"
  densify_fallback = "${var.densify_fallback}"
  # In this sample we are using the system name as the unique idenifier but if you had multiple systems that had the same name this should be set uniquely to make sure the correct recommendations are set\applied for each system.
  densify_unique_id = "${var.name}"
}

resource "azurerm_resource_group" "test" {
  name     = "testRG"
  location = "West US 2"
}

resource "azurerm_virtual_network" "test" {
  name                = "testvn"
  address_space       = ["10.0.0.0/16"]
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
}

resource "azurerm_subnet" "test" {
  name                 = "testsub"
  resource_group_name  = "${azurerm_resource_group.test.name}"
  virtual_network_name = "${azurerm_virtual_network.test.name}"
  address_prefix       = "10.0.2.0/24"
}

resource "azurerm_network_interface" "test" {
  name                = "testni"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "${azurerm_subnet.test.id}"
    private_ip_address_allocation = "dynamic"
  }
}

resource "azurerm_managed_disk" "test" {
  name                 = "datadisk_existing"
  location             = "${azurerm_resource_group.test.location}"
  resource_group_name  = "${azurerm_resource_group.test.name}"
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = "1023"
}

resource "azurerm_virtual_machine" "test" {
  name                  = "${var.name}"
  location              = "${azurerm_resource_group.test.location}"
  resource_group_name   = "${azurerm_resource_group.test.name}"
  network_interface_ids = ["${azurerm_network_interface.test.id}"]

  # normal way of sizing an instance by hardcoding the size.
  #vm_size = "Standard_DS2_v2"

  # new self-optimizing instance type from Densify
  vm_size = "${module.densify.instance_type}"
 
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  # tag instance to make it Self-Aware these tags are optional and can set as few or as many as you like.
  tags {
    Name = "${var.name}"
	Current-instance-type = "${module.densify.Current_type}"
    Densify-optimal-instance-type = "${module.densify.recommended_type}"
    Densify-potential-monthly-savings = "${module.densify.savings_estimate}"
    Densify-predicted-uptime = "${module.densify.predicted_uptime}"
    Densify-recommend-RI-coverage = "${module.densify.recommend_ri_coverage}"
	#Should match the densify_unique_id value as this is how Densify references the system as unique
	Densify-Terraform-ID = "${var.name}"
  }
}