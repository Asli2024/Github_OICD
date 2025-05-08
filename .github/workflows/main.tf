resource "aws_ec2_instance" "example" {
  ami           = data.aws_ami.latest.id
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
