resource "aws_db_subnet_group" "main" {
    name = "dbsubnet"
    description = "This is db subnet group"
    subnet_ids = [
        aws_subnet.private_subnet_1.id,
        aws_subnet.private_subnet_2.id
    ]
}