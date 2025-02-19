resource "aws_iam_policy" "s3_policy" {
  name        = "maven_repo_policy"
  path        = "/"
  description = "Policy for maven repo"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = [
            aws_s3_bucket.maven_repo.arn,
            "${aws_s3_bucket.maven_repo.arn}/*"
        ]
      },
    ]
  })
}

