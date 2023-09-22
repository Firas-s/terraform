provider "google" {
    credentials = file("focused-waters-393814-cfad3c5136c0.json")
    project     = "focused-waters-393814"
    region      = "europe-west1"
}

module "google_storage_bucket" {
  source                 = "./gcs"
  bucket_name            = var.gcs_terraform
  bucket_location        = var.bucket_location
  bucket_storage_class   = var.bucket_storage_class
  bucket_labels          = var.bucket_labels
  bucket_versioning      = var.bucket_versioning
  cors_origin            = var.cors_origin
  cors_method            = var.cors_method
  cors_response_header   = var.cors_response_header
  cors_max_age_seconds   = var.cors_max_age_seconds
  cors_allow_credentials = var.cors_allow_credentials
  website_main_page      = var.website_main_page
  website_not_found_page = var.website_not_found_page
}
