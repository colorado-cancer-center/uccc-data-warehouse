resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "genomics"
  friendly_name               = "genomics"
  description                 = "Clinical genomics data for patients from the UCHealth system"
  location                    = "US"
  project = "${google_project.project.project_id}"
  labels = {
    environment = "production"
    unit = "cancer-center"
    phi = "true"
  }

  access {
    role          = "OWNER"
    user_by_email = "seandavi@gmail.com"
  }

}

output "dataset_id" {
  value = "${google_bigquery_dataset.dataset.dataset_id}"
}