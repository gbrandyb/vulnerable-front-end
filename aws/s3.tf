resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  # generate new commit to update tags
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-data"
    Environment          = local.resource_prefix.value
    yor_trace            = "0c23f4fd-6fd9-4ed1-925f-6c1b13388837"
    git_commit           = "fafad960053fe30d4097f952b8e2be0a3bd1e936"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-07 16:12:20"
    git_last_modified_by = "gbrandyburg@paloaltonetworks.com"
    git_modifiers        = "gbrandyburg/matt"
    git_org              = "adopt-guide-demos-US2"
    git_repo             = "deployablegoat"
  }
}

resource "aws_s3_bucket" "financials" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning

  # generate new commit to update tags
  bucket        = "${local.resource_prefix.value}-financials"
  acl           = "private"
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-financials"
    Environment          = local.resource_prefix.value
    yor_trace            = "b1450859-3ab4-43db-b287-c19034fe0fbb"
    git_commit           = "fafad960053fe30d4097f952b8e2be0a3bd1e936"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-07 16:12:20"
    git_last_modified_by = "gbrandyburg@paloaltonetworks.com"
    git_modifiers        = "gbrandyburg/matt"
    git_org              = "adopt-guide-demos-US2"
    git_repo             = "deployablegoat"
  }
}

resource "aws_s3_bucket" "operations" {
  # bucket is not encrypted
  # bucket does not have access logs

  # generate new commit to update tags
  bucket = "${local.resource_prefix.value}-operations"
  acl    = "private"
  versioning {
    enabled = true
  }
  force_destroy = true
  tags = {
    Name                 = "${local.resource_prefix.value}-operations"
    Environment          = local.resource_prefix.value
    yor_trace            = "4534313c-6d0d-457d-b928-4c89689fb08a"
    git_commit           = "fafad960053fe30d4097f952b8e2be0a3bd1e936"
    git_file             = "aws/s3.tf"
    git_last_modified_at = "2023-03-07 16:12:20"
    git_last_modified_by = "gbrandyburg@paloaltonetworks.com"
    git_modifiers        = "gbrandyburg/matt"
    git_org              = "adopt-guide-demos-US2"
    git_repo             = "deployablegoat"
  }

}