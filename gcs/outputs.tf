output "bucket_url" {
  value       = "gs://${google_storage_bucket.mon_bucket.name}"
  description = "L'URL du bucket GCS créé"
}

output "bucket_location" {
  value       = google_storage_bucket.mon_bucket.location
  description = "L'emplacement du bucket GCS"
}
