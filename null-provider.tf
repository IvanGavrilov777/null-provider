resource "null_resource" "screen_output" {
 triggers = {
    time = timestamp ()
  }
  provisioner "local-exec" {
    command = <<EOT
    curl \  --header "Authorization: Bearer ${var.token}" \  --header "Content-Type: application/vnd.api+json" \  --request POST \  -d { "comment": "This run was stuck and would never finish." } \  https://app.terraform.io/api/v2/runs/run-bs6zmWQPaaVdf3gU/actions/discard
    EOT
    }
}
variable "token" {
}
#12123

variable "team_name" {
default = "ivan-team-creation-with-var"
}
