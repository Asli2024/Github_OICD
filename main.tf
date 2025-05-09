resource "aws_instance" "test" {
  ami           = data.aws_ami.latest.id
  instance_type = var.instance_type

  metadata_options {
    http_tokens   = "required"
    http_endpoint = "enabled"
  }

  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "ExampleInstance3"
  }
}
