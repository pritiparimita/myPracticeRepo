resource "aws_instance" "ec2_mumbai" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"

  tags = {
    Name = "terra_instance"
  }
}
