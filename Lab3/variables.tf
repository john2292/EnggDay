
variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default = "sincere-bongo-291306"
}

variable "buckets" {
  type    = map
  default = {
    "key1" = "muhasin"
    "key2" = "santosh"
  }
}

