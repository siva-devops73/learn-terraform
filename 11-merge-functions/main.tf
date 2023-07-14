variable "Name" {
  default = {
    fruit_name = "apple"
  }
}

variable "Details" {
  default = {
    quantity = 100
    rating = 3.4
  }
}

output "Fruit" {
  value = merge(var.Name, var.Details)
}