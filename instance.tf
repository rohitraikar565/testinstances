provider "google" {
  project     = "niveus-delivery-products"
  zone        = "us-central1"
}
resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = "us-central1-a"
  count        = 2

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "default"
  }

}
