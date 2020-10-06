
provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}


data "google_compute_subnetwork" "my-subnetwork" {
  name   = "terraform-subnet2"
  region = "us-east1"
}

resource "google_compute_instance" "vm_instance" {
  machine_type = "f1-micro"
  name = "terraform-instance2"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    subnetwork = data.google_compute_subnetwork.my-subnetwork.self_link
    access_config {

    }
  }

metadata_startup_script = "sudo apt install apache2 -y;sudo systemctl start apache2"

}

