provider "aws" {
  region = var.region
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_ecr_repository" "my_app" {
  name = "my-docker-repo"
}

# output "ecr_repository_url" {
#   value = aws_ecr_repository.my_app.repository_url
# }
