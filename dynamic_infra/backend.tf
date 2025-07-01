terraform {
  backend "s3" {
    bucket         = "jenkins-ec2-backend-bucket-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jenkins-ec2-table"
    encrypt        = true
  }
}
