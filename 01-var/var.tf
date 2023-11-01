#variable

variable "sample_string" {
  default = "My sample variable program"
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


#Distionary or map

variable "sample_dict" {
  default = {
    number1=44
    boolean1=false
    string1="juunu"
    float1=33.3
  }

}

variable "env" { }

variable "auto_num1" {}

//variable "sample1" {}
//variable "latest" {}