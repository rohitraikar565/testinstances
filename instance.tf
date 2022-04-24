provider "google" {
  credentials = "${file("inframod-training-09efb368bf98.json")}"
  project     = "inframod-training"
  availability_zone       = [us-central1-a, us-central1-f, us-central1-b, us-central1-c, asia-south1-c, asia-south1-b]
}
resource "google_compute_instance" "default1" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
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
