
resource "aws_instance" "sandeep-srv-1" {
  ami           = var.ami_id
  instance_type = var.i_type
  tags = {
    Name = upper("sandeep-test-instance")
  }
}
