

/* module "sql-db_example_mysql-public" {
  source  = "GoogleCloudPlatform/sql-db/google//examples/mysql-public"
  version = "4.0.0"
  project_id = var.project_id
  db_name = "muhasintfdemo1"
  authorized_networks = [ { "name": "sample-gcp-health-checkers-range", "value": "0.0.0.0/0" } ]
  # insert the 1 required variable here
}
 */


module "bucket" {
  source = "./modules/simple_bucket"
  for_each = var.buckets
  name     = "${each.value}_bucket"
  

  project_id = var.project_id
  location   = "us-east1"

}