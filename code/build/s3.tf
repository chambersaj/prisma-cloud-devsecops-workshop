provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"
  acl           = "public-read-write"

  tags = {
    Environment          = "Dev"
    git_commit           = "e1085b11fa8f5d65c713f31d2b1ad84611f184ba"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-01-30 17:43:32"
    git_last_modified_by = "4009987+chambersaj@users.noreply.github.com"
    git_modifiers        = "4009987+chambersaj"
    git_org              = "chambersaj"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "e5aea444-0dd1-4cff-8fa7-a0a7a6a4ab3d"
  user = "achambers"
  }
}
