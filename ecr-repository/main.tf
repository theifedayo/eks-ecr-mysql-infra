provider "aws" {
  region = var.region
  access_key = ""
  secret_key = ""
}

resource "aws_ecr_repository" "my_app" {
  name = "my-docker-repo"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.my_app.repository_url
}
