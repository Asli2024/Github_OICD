resource "aws_instance" "test" {
  ami           = data.aws_ami.latest.id
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
