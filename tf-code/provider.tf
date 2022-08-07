terraform {
  required_version = ">= 0.13.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.25.0"
    }
  }
}
provider "google" {
  project = "starry-axis-344217"
  region  = "us-central1"
  zone    = "us-central1-a"
}

