variable "class" {
  default = "devops"
}

## print the same in capital letters
output "class" {
  value = upper(var.class)
}


variable "fruits" {
  default = ["apple", "banana", "grapes"]
}

output "fruit_count" {
  value = length(var.fruits)
}


variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins", "docker"]
    }
    aws = {
      name = "aws"
    }
  }
}

output "devops_topics" {
  value = var.classes["devops"]["topics"]
}

output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null), "topics", "No Topics so Far")
}

# Element Function
output "fruits_5" {
  value = element(var.fruits, 5)
}
