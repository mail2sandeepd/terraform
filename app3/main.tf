module "s3-bucket" {
    source = "./modules/s3-module"
    bucket_name = var.bucket
}
