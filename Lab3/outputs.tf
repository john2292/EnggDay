

output "bucket" {
  description = "The created storage bucket"
  value       =  module.bucket
}

/* output "mysql_conn" {
  description = "The created my sql instance connnection"
  value       = module.sql-db_example_mysql-public.mysql_conn
}

output "mysql_user_pass" {
  description = "my sql default user password"
  value       = module.sql-db_example_mysql-public.mysql_user_pass
}

output "name" {
  value       = module.sql-db_example_mysql-public.name
  description = "The name for Cloud SQL instance"
} */