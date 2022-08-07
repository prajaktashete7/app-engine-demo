terraform {
  backend "gcs" {
    bucket = "starry-axis-tfstates"
    prefix = "main/"
  }
}