resource "null_resource" "screen_output" {
  triggers = {
    time = timestamp()
  }
#  provisioner "local-exec" {
#    command = <<EOT
#curl \
#  --header "Authorization: Bearer ${var.token}" \
#  --header "Content-Type: application/vnd.api+json" \
#  --request POST \
#  -d '{"comment": "This run was stuck and ${var.phrase} never finish."}' \
#  https://app.terraform.io/api/v2/runs/run-mRzumDh8tgTW1KAe/actions/discard
#EOT
 # }

provisioner "local-exec"{
command = <<EOT
pwd > current_path.txt
EOT
}
}

output "file_content" {
  value = file("${path.module}/current_path.txt")
}
variable "token" {

}
#12123

variable "team_name" {
  default = "ivan-team-creation-with-var"
}

variable "phrase" {
  default = "ivan-team-creation-with-var"
}




