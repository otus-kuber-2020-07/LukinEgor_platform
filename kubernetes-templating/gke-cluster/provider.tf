provider "google" {
  version = "~> 3.38"
  credentials = file("~/.config/gcloud/default_account.json")
  project = "helical-ion-289008"
  region = "us-central1"
}
