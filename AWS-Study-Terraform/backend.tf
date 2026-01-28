terraform {
  backend "s3" {
    bucket = "tf-handson-saito"
    key    = "chapter-5/terraform.tfstate"
    region = "ap-northeast-1"
  }
}