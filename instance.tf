provider "google" {
  credentials = "${file("inframod-training-09efb368bf98.json")}"
  project     = "inframod-training"
  zone        = "asia-south1"
}
resource "google_compute_instance" "cxp" {
  name         = var.name
  machine_type = var.machine_type
  zone         = "asia-south1"
  count        = 6
 tags = ["lxi", "sxi"]

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
