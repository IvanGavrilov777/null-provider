resource "null_resource" "screen_output" {
  provisioner "local-exec" {
    command = <<EOT
    date
    EOT
  }
}
