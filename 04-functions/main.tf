variable "sample" {
  default = "manikanta"
}
output "sample" {
  value = upper(var.sample)
}
