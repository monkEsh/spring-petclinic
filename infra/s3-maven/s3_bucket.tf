resource "aws_s3_bucket" "maven_repo" {
  bucket            = var.bucket_name
  acl               = "private"
  force_destroy     = true
  tags = {
    Name        = "Maven repository"
    Environment = "Development"
  }
}

resource "aws_s3_bucket_object" "folders" {
    count   = "${length(var.s3_folders)}"
    bucket = "${aws_s3_bucket.maven_repo.id}"
    key    = "${var.s3_folders[count.index]}/"
    source = "/dev/null"
}

