output "Public_Subnet" {
 value = data.aws_subnet.pub-subnet.id
}

output "Private_Subnet" {
 value = data.aws_subnet.pri-subnet.id
}