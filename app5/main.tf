
provider "aws" {
    region = "us-east-2"
}

module "server" {
  source  = "app.terraform.io/mail2sandeepd/ec2-s3-module/aws"
  version = "1.0.0"
  ami_id = "ami-00399ec92321828f5"
}

module "server2" {
  source  = "app.terraform.io/mail2sandeepd/ec2-s3-module/aws"
  version = "1.0.0"
    i_type = "t2.nano"
    bucket = "sandeep-bucket-33"
}

module "bucket-only" {
  source  = "app.terraform.io/mail2sandeepd/ec2-s3-module/aws//modules/s3-module"
  version = "1.0.0"
  # insert required variables here
  bucket_name = "sandeep-bucket-22"
}


output "IP" {
 value = module.server2.MY_PUBLIC_IP
}
