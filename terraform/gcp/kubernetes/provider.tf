provider "google" {
  project = "etechproject-409101"
  region = "europe-west1"
}

terraform {

  backend "gcs" {
    bucket = "gerryik-cicd-tf-state"
    prefix = "terraform/state"
    
  }
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.56.0"
    }

  }

}


