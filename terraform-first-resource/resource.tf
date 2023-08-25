resource "github_repository" "terraformCode" {
  name        = "terraformCode"
  description = "My first terraform resource"
  visibility  = "public"
  auto_init   = "true"
}

output "terraform_repo_output" {
  value = github_repository.terraformCode.html_url
}