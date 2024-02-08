provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"
  acl           = "public-read"

  tags = {
    Environment          = "Dev"
    git_commit           = "2b3123e8eaeb618c47556590bc88d624d4a75725"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-02-08 21:29:23"
    git_last_modified_by = "4009987+chambersaj@users.noreply.github.com"
    git_modifiers        = "4009987+chambersaj"
    git_org              = "chambersaj"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "e5aea444-0dd1-4cff-8fa7-a0a7a6a4ab3d"
    user                 = "achambers"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
