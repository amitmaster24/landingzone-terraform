
variable "rg_details" {
  type = map(string)
}

resource "azurerm_resource_group" "rg" {
  for_each = var.rg_details
  name     = each.key
  location = each.value
}