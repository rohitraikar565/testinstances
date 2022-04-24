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
