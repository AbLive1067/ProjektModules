resource "aws_s3_bucket" "example" {
  bucket = "${var.environment}-${var.application}-s3-bucket"
  acl    = var.acl


  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-s3-bucket"
      Environment = var.environment,
      Owner       = var.owner,
      Application = var.application
    },
    var.tags
  )
}