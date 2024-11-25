# data "aws_subnets" "default_subnet" {
#   filter {
#     name   = "vpc-id"
#     values = data.vpc_id.id
#   }
# }
# output "deault_subnet_id" {
#   value = data.aws_subnets.default_subnet.id
# }