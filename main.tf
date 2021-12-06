terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  
  project = "secret-reactor-330910"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-8"
      size = 50
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
