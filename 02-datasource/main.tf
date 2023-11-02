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

data "aws_security_group" "selected" {
  name="allow-all"
}

output "secutry_group_op_id" {
  value = data.aws_security_group.selected.id

}
output "secutry_group_op_name" {
  value = data.aws_security_group.selected.name

}