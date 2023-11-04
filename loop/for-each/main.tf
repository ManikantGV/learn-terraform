resource "null_resource" "fruits" {
  #count=length(var.fruits)
  for_each = var.fruits
  provisioner "local-exec" {
    #command="echo fruit name -${length(var.fruits)}"
    #command="echo fruit name -${var.fruits[count.index]}"
    command="echo fruit name -${var.fruits[each.key]} -- ${var.fruits[each.value]}"
  }
}

variable "fruits" {
  default = {
    apple=10
    orange=20
    banana=30
  }

}
