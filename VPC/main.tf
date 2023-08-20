resource "google_compute_network" "custom-test" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "network-with-private-secondary-ip-ranges" {
  name          = var.subnet_name
  ip_cidr_range = var.ip_range
  network       = google_compute_network.custom-test.id
}
