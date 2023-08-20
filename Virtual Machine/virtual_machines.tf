
resource "google_compute_instance" "default" {

  name         = var.server_name
  machine_type = var.machine_type
  region       = "asia-east1"
  zone         = var.zone
  labels = {
  }
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 15
    }
  }

  network_interface {
    network    = var.network_name
    network_ip = var.static_ip
    subnetwork = var.subnet_name
  }
}
