resource "aws_s3_bucket" "s3-backend" {
  bucket = "s3-backend-terraform-project-terra-project"
}
resource "aws_s3_bucket_server_side_encryption_configuration" "s3-backend-sse" {
  bucket = aws_s3_bucket.s3-backend.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}
resource "aws_s3_bucket_versioning" "s3-backend-sse-versioning" {
  bucket = aws_s3_bucket.s3-backend.id
  versioning_configuration {
    status = "Enabled"
  }
   depends_on = [ aws_s3_bucket_server_side_encryption_configuration.s3-backend-sse ]
}


