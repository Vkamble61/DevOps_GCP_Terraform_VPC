terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.50.0"
    }
  }
}

provider "google" {
  credentials = file("tr-devops-325b15e9cb1c.json")

  project = "tr-devops"
  region  = "europe-west2"
  zone    = "europe-west2-c"
}

resource "google_compute_network" "vpc_network" {
  name = "devopsvpc"
}
