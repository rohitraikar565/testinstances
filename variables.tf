variable "zone" {
  description = "gcp-zone"
  default     = "asia-south1"
}


variable "machine_type" {
  description = "Type of ce instance to provision"
  default     = "e2-medium"
}


variable "name" {
  description = "ce instance name"
  default     = "ubuntu"
}
