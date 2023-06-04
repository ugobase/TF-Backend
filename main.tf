#resource "random_id" "ugo-rnd" {

 # byte_length = 2
#}


resource "aws_s3_bucket" "ugo" {
  bucket = ugobase-bucket
  #bucket = "ugobase-${random_id.ugo-rnd.dec}"
}



resource "aws_s3_bucket_versioning" "ugo-version" {
  bucket = aws_s3_bucket.ugo.id
  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_instance" "base" {
  ami           = "ami-06a0cd9728546d178"
  instance_type = "t2.micro"


  tags = {
    Name = "HelloWorld"
  }
}