resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "this" {
  count = var.create_key_pair ? 1 : 0

  key_name        = var.key_name
  key_name_prefix = var.key_name_prefix
  public_key      = tls_private_key.this.public_key_openssh
  provisioner "local-exec" { # Generate "terraform-key-pair.pem" in current directory
    command = <<-EOT
      echo '${tls_private_key.this.private_key_pem}' > /tmp/'${var.generated_key_name}'.pem
      chmod 400 /tmp/'${var.generated_key_name}'.pem
    EOT
  }
  tags = var.tags
}
