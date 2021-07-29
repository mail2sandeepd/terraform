data "aws_ami" "amazon-linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20210701*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"] # Amazon
}

data "aws_vpc" "myvpc" {
    filter {
    name   = "tag:Name"
    values = ["Defa*"]
  }
}

data "aws_subnet" "pri-subnet" {
  vpc_id = data.aws_vpc.myvpc.id
  filter {
    name   = "tag:Name"
    values = ["pri*"]
  }
}

data "aws_subnet" "pub-subnet" {
  vpc_id = data.aws_vpc.myvpc.id
  filter {
    name   = "tag:Name"
    values = ["pub*"]
  }
}