output "vpc_id" {
description = "The ID of the VPC"
value = module.vpc.vpc_id
}

output "public_subnets" {
description = "List of ID of public subnet"
value = module.vpc.public_subnets[*]
}

output "private_subnets" {
description = "List of ID of public subnet"
value = module.vpc.public_subnets[*]
}
