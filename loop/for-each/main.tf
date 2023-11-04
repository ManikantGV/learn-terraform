resource "null_resource" "fruits" {
  count=length(var.fruits)
  provisioner "local-exec" {
    command="echo fruit name -${var.fruits}"
  }
}

variable "fruits" {
  default = {
    apple=10
    orange=20
    banana=30
  }

}
