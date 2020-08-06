extension {
  name                       = var.name
  publisher                  = "dynatrace.ruxit"
  type                       = "oneAgentLinux"
  type_handler_version       = "1.0"
  provision_after_extensions = var.provision
  settings = jsonencode({
    "tenantId" = "<Environment-ID>"
    "token" = "<API-Token>"
    "server" = "<Server-Url>"
    "enableLogAnalytics" = "no"
    "hostGroup" = "<Host-Group>"
  })
}

resource "azurerm_virtual_machine_scale_set_extension" "dynatrace_extension" {
  name                         = var.name
  virtual_machine_scale_set_id = azurerm_linux_virtual_machine_scale_set.resource.id
  publisher                    = "dynatrace.ruxit"
  type                         = "oneAgentLinux"
  type_handler_version         = "1.0"
  settings = jsonencode({
    "tenantId" = "<Environment-ID>"
    "token" = "<API-Token>"
    "server" = "<Server-Url>"
    "enableLogAnalytics" = "no"
    "hostGroup" = "<Host-Group>"
  })
}