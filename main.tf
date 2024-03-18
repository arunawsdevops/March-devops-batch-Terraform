resource "aws_s3_bucket" "s3hwork" {
    bucket = var.s3hwork
}
resource "aws_s3_bucket_ownership_controls" "ownerhwork" {
  bucket = aws_s3_bucket.s3hwork.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "aclhwork" {
  depends_on = [aws_s3_bucket_ownership_controls.ownerhwork]
  bucket = aws_s3_bucket.s3hwork.id
  acl    = "public-read-write"
}

resource "aws_instance" "ec2hwork" {
    ami = "ami-0fe630eb857a6ec83"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    tags = var.ec2name

  
}

resource "aws_sns_topic" "snshwork" {
    name = "hworksnstopic"
  
}