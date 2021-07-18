resource "aws_iam_user" "s3_access_user" {
  name = "s3-user-maven"
}

resource "aws_iam_user_policy_attachment" "s3_access_attach" {
  user       = aws_iam_user.s3_access_user.name
  policy_arn = aws_iam_policy.s3_policy.arn
}