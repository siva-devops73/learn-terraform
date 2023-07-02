module "sample1" {
  source = "./ec2"
  name = "sample1"
}


module "sample2" {
  source = "./ec2"
  name = "sample2"
}

output "sample1" {
  value = module.sample1.public_ip
}

output "sample2" {
  value = module.sample2.public_ip
}