resource "null_resource" "screen_output" {
  provisioner "local-exec" {
    command = <<EOT
    bucket="ivan-timebucket"
    key="your-object-key"
    url=$(aws s3 presign s3://$bucket/$key)
    echo "Pre-signed URL: $url"
    EOT
  }
}
