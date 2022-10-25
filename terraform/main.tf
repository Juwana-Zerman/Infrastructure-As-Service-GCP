provider "google" {
  # Path to GCP service account credentials
  credentials = var.credentials
  # Your GCP project ID
  project = "infrastructure-as-code-366522"
  # Any region of your choice
  region = "us-east4"
  # Any zone of your choice
  zone = "us-east4-b"
}

resource "google_compute_instance" "vm" {
  name         = "iaas-vm"
  machine_type = "e2-micro"
  zone         = "us-east4-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }
}