#variable

variable "sample_string" {
  default = "My sample variable program"
}

output "sample_string" {
  value =var.sample_string
}

output "sample_string1" {
  value = "this is my first sample string = ${var.sample_string}"
}

variable "sample_number" {
  default = 100
}

variable "sample_boolean" {
  default = true
}

variable "sample_number1" {
  default = 10.2
}

#list
variable "sample_list" {
  default = [ 100,"mani",true, 49.3]
}

output "sample_list" {
  value = var.sample_list[2]
}

#Distionary or map

variable "sample_dict" {
  default = {
    number1=44
    boolean1=false
    string1="juunu"
    float1=33.3
  }

}

output "sample_dict" {
  value = var.sample_dict["boolean1"]
}