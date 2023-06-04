resource "aws_dynamodb_table" "ugobase-table" {
    name           = "ugobase-db"
    read_capacity  = 5
    write_capacity = 5
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        Name = "DynamoDB Terraform State Lock"
    }
}