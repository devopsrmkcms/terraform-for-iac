terraform {
  backend "s3" {
    bucket = "jenkins-mysql-backup-project2000"
    key    = "app1/terraform.tfstate"
    region = "ap-south-1"
  }
}

