data "aws_ami" "latest" {
  most_recent = true
  owners      = ["amazon"] # Specify the owner, e.g., "amazon" for official AMIs

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"] # Adjust the pattern to match your desired AMI
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "latest_ami_id" {
  value = data.aws_ami.latest.id
}
