provider "google" {
  # Path to GCP service account credentials
  credentials = file("terraform/terraform.tfvars")
  # Your GCP project ID
  project     = "infrastructure-as-code-366522"
  # Any region of your choice
  region      = "us-east4"
  # Any zone of your choice
  zone       = "us-east4-a"
}

resource "google_compute_instance" "vm" {
  name         = "IaaS-vm"
  machine_type = "f1-micro"
  zone         = "us-east4-a"

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