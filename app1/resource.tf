resource "aws_instance" "sandeep-server-1" {
 ami = data.aws_ami.amazon-linux.id
 instance_type = "t2.micro"
 subnet_id = "${var.app == "web" ? data.aws_subnet.pub-subnet.id : data.aws_subnet.pri-subnet.id }"
  tags = {
    Name = "Sandeep-prod-instance1"
    Env = "Prod"
    app = var.app
  }
}