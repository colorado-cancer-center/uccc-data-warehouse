variable "billing_account" {
  description="The billing account to attach to the project"
}

variable "org_id" {
  default=""
  description="The organization into which to place the project"
}

variable "region" {
  default="us-central1"
  description="The google region for the project"
}

variable "project_name" {
  description = "The name for the project"
}

resource "random_id" "id" {
 byte_length = 4
 prefix      = "${var.project_name}-"
}

provider "google" {
 region = "${var.region}"
}

resource "google_project" "project" {
 name            = "${var.project_name}"
 project_id      = "${random_id.id.hex}"
 billing_account = "${var.billing_account}"
 org_id = "${var.org_id}"
 auto_create_network = "false"
}

resource "google_project_service" "project" {
 for_each = toset( [
   "iam.googleapis.com",
   "bigquery.googleapis.com",
   "storage.googleapis.com"
 ])

 project = "${google_project.project.project_id}"
 service = each.key
}

output "project_id" {
  value = "${google_project.project.project_id}"
  description = "The final project id"
}

