resource "null_resource" "fruits" {
  #count=length(var.fruits)
  for_each = var.fruits
  provisioner "local-exec" {
    #command="echo fruit name -${length(var.fruits)}"
    #command="echo fruit name -${var.fruits[count.index]}"
    command="echo fruit name - ${each.key} -- ${each.value["count"]}  -- ${each.value["name"]}"
  }
}

#variable "fruits" {
#  default = {
#    apple=10
#    orange=20
#    banana=30
#
#  }
#
#}
variable "fruits" {
  default = {
    apple=
    {
      count=10
      name="first"
    }
    orange={
     count=20
      name="second"
    }
    banana={
      count=30
      name="third"
    }

  }

}

