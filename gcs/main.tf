resource "google_storage_bucket" "mon_bucket" {
  name          = var.bucket_name
  location      = var.bucket_location
  storage_class = var.bucket_storage_class

  labels = var.bucket_labels

  versioning {
    enabled = var.bucket_versioning
  }

  cors {
    origin                   = var.cors_origin
    method                   = var.cors_method
    response_header          = var.cors_response_header
    max_age_seconds          = var.cors_max_age_seconds
  }

  website {
    main_page_suffix = var.website_main_page
    not_found_page   = var.website_not_found_page
  }
}
