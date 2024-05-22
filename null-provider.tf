resource "null_resource" "screen_output" {
 triggers = {
    time = timestamp ()
  }
  provisioner "local-exec" {
    command = <<EOT
curl \
  --header "Authorization: Bearer var.token" \
  --header "Content-Type: application/vnd.api+json" \
  --request GET \
  https://app.terraform.io/api/v2/organizations/healthy-organ/teams
    EOT
  }
}
variable "token" {
sensitive = true
}
