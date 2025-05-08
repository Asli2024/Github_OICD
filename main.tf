resource "aws_instance" "test" {
  ami           = data.aws_ami.latest.id
  instance_type = var.instance_type

  tags = {
    Name = "ExampleInstance"
  }
}
