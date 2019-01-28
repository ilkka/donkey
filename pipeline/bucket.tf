resource "aws_s3_bucket" "upload" {
  bucket_prefix = "markku-upload"
  region        = "${var.aws_region}"
  tags          = "${merge(local.common_tags, map())}"
}

output "upload_bucket_arn" {
  value = "${aws_s3_bucket.upload.arn}"
}

output "upload_bucket_domain" {
  value = "${aws_s3_bucket.upload.bucket_domain_name}"
}
