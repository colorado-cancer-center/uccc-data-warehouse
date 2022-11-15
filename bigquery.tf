variable "owner_email" { 
  type = string
  description = "Email address of the owner of the bigquery dataset"
}

variable "dataset_name" { 
  type = string
  description = "Name of the bigquery dataset"
}

variable "dataset_description" { 
  type = string
  description = "Description of the bigquery dataset"
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "${var.dataset_name}"
  friendly_name               = "${var.dataset_name}"
  description                 = "${var.dataset_description}"
  location                    = "US"
  project = "${google_project.project.project_id}"
  labels = {
    environment = "production"
    unit = "cancer-center"
    phi = "true"
  }

  access {
    role          = "OWNER"
    user_by_email = "${var.owner_email}"
  }

}

output "dataset_id" {
  value = "${google_bigquery_dataset.dataset.dataset_id}"
  description = "The google bigquery dataset id"
}