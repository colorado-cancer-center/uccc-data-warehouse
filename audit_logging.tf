resource "google_project_iam_audit_config" "all_services" {
  project = "${google_project.project.project_id}"
  service = "allServices"
  audit_log_config {
    log_type = "ADMIN_READ"
  }
  audit_log_config {
    log_type = "DATA_READ"
  }
  audit_log_config {
    log_type = "DATA_WRITE"
  }
}


resource "google_logging_project_sink" "audit" {
  name = "project-audit-log-sink"

  project = "${google_project.project.project_id}"

  # Can export to pubsub, cloud storage, or bigquery
  destination = "logging.googleapis.com/projects/${google_project.project.project_id}/locations/global/buckets/_Default"

  # Use a unique writer (creates a unique service account used for writing)
  unique_writer_identity = true
}