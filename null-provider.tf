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
   --data '{  "data": {    "type": "teams",    "attributes": {      "name": "${var.team_name}",      "sso-team-id": "cb265c8e41bddf3f9926b2cf3d190f0e1627daa4",      "organization-access": {        "manage-workspaces": true      }    }  }}' \
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
