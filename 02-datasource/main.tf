#
#data "aws_security_group" "test" {}
#
#
#data "aws_security_group" "single" {
#  count = length(data.aws_security_group.test.id)
#  id=data.aws_security_group.test.id[count.index]
#}
#
#output "all_sg" {
#  value = data.aws_security_group.test
#}
#
#output "single" {
#  value = data.aws_security_group.single
#}

data "aws_security_groups" "test" {}

data "aws_security_group" "single" {
  count = length(data.aws_security_groups.test.ids)
}
output "all" {
  value = data.aws_security_groups.test
}

