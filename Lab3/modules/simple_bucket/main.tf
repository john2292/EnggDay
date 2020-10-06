



resource "google_storage_bucket" "bucket" {
  name                        = var.name
  project                     = var.project_id
  location                    = var.location
  force_destroy               = var.force_destroy

  versioning {
    enabled = var.versioning
  }


}