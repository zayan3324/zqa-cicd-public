terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = "zqa-lab-gcp-1027b47f"
  region  = "us-central1"
}

resource "google_compute_instance" "zqa" {
  name         = "zqa-w112-gcp-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
  }

  labels = {
    "zaysa-test" = "zqa"
  }
}

output "instance_name" {
  value = google_compute_instance.zqa.name
}
