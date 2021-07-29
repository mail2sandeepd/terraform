provider "aws" {
    region = "us-east-2"
}

module "server1" {
    source = "/data/sandeep/app3"
    ami_id = "ami-0739f8cdb239fe9ae"
}

module "server2" {
    source = "/data/sandeep/app3"
    i_type = "t2.nano"
    bucket = "sandeep-terra-test-3"

}

module "bucket-only" {
  source = "/data/sandeep/app3/modules/s3-module"
  bucket_name = "sandeep-terra-test-2"
}
