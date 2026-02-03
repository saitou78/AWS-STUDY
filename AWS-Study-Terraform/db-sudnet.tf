resource "aws_db_subnet_group" "aws_study_db_subnet_group" {
    name       = "aws-study-db-subnet-group"
    subnet_ids = [
        aws_subnet.aws-study-subnet-1a.id,
        aws_subnet.aws-study-subnet-1c.id,
    ]
    
    tags = {
        Name = "aws-study-db-subnet-group"
    }
}