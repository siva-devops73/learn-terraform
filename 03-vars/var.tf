variable "sample" {
  default = "Hello Good Morning"
}

variable "sample1" {
  default = 200
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}

## sometimes if variable/any reference with combination of some other string then we have access those in ${}

output "sample-ext" {
  value = "value of sample1 - ${var.sample1}"
}


# variable Data types
# 1. string
# 2. number
# 3. Boolean

# variable types
# In Ansible - 1. plan key, value, 2. list 3. map/dict

# In terraform
# 1. plan
# 2. list
# 3. map


## Plan
variable "course" {
  default = "Devops Training"
}

## List
variable "courses" {
  default = [
    "Devops",
    "AWS",
    "Python"
  ]
}

## Map
variable "course_details" {
  default = {
    Devops = {
      name = "Devops"
      timing = "10am"
      duration = 90
    }
    AWS = {
      name = "Aws"
      timing = "9am"
      duration = 80
    }
  }
}


output "course" {
  value = var.course
}

output "courses" {
  value = var.courses[2]
}

output "course_details" {
  value = var.course_details["Devops"]
}