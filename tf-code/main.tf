resource "google_cloudbuild_trigger" "filename-triggers" {
  project = "starry-axis-344217"
  name        = "app-engine-deploy-trigger"
  description = "cloud build trigger for app deployment"
  source_to_build {
    uri       = "https://github.com/prajaktashete7/blog"
    ref       = "refs/heads/main"
    repo_type = "GITHUB"
  }
  github {
    owner = "prajaktashete7"
    name  = "blog"
    push {
      branch = "main"
    }
  }
  substitutions = {
    "_SERVER_ENV" = "dev"
  }
  filename        = "cloudbuild.yaml"
  service_account = "projects/starry-axis-344217/serviceAccounts/cloud-build-sa@starry-axis-344217.iam.gserviceaccount.com"
}





