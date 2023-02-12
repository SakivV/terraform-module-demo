module "web_bucket" {
  source = "../modules/s3-website"
  bucket_name = "cloudmonkey-terraform-20230211"
}