

data "aws_security_group" "test" { }


data "aws_security_group" "single" {
  count = length(data.aws_security_group.test.ids)
  id=data.aws_security_group.test.ids[count.index]
}

output "all_sg" {
  value = data.aws_security_group.test
}

output "single" {
  value = data.aws_security_group.single
}
