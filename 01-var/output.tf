
output "sample_string" {
  value =var.sample_string
}

output "sample_string1" {
  value = "this is my first sample string = ${var.sample_string}"
}


output "sample_list" {
  value = var.sample_list[2]
}

output "sample_dict" {
  value = var.sample_dict["boolean1"]
}

output "env" {
  value = var.env
}


#output "auto_num1" {
#  value = var.auto_num1
#}
#
#output "sample1" {
#  value = var.sample1
#}
#
#output "latest" {
#  value = var.latest
#}