resource "null_resource" "screen_output" {
 triggers = {
    time = timestamp ()
  }
  provisioner "local-exec" {
    command = <<EOT
curl \
  --header "Authorization: Bearer ${var.token}" \
  --header "Content-Type: application/vnd.api+json" \
   --request POST \  
   --data payload.json \
https://app.terraform.io/api/v2/organizations/healthy-organ/teams
    EOT
  }
}
variable "token" {
}
#12

variable "team_name" {
default = "ivan-team-creation-with-var"
}
