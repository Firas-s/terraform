variable "gcs_terraform" {
  description = "Nom du bucket GCS"
  type        = string
}

variable "bucket_location" {
  description = "Emplacement du bucket GCS"
  type        = string
  default     = "EUROPE-WEST1"
}

variable "bucket_storage_class" {
  description = "Classe de stockage du bucket"
  type        = string
  default     = "STANDARD"
}

variable "bucket_labels" {
  description = "Étiquettes pour le bucket"
  type        = map(string)
  default     = {
    env = "dev"
  }
}

variable "bucket_versioning" {
  description = "Activer la gestion des versions"
  type        = bool
  default     = true
}

variable "cors_origin" {
  description = "Origines CORS pour le bucket"
  type        = list(string)
  default     = ["*"]
}

variable "cors_method" {
  description = "Méthodes CORS pour le bucket"
  type        = list(string)
  default     = ["GET", "HEAD"]
}

variable "cors_response_header" {
  description = "En-têtes de réponse CORS"
  type        = list(string)
  default     = ["*"]
}

variable "cors_max_age_seconds" {
  description = "Durée maximale (en secondes) des informations d'identification CORS"
  type        = number
  default     = 3600
}

variable "cors_allow_credentials" {
  description = "Autoriser les informations d'identification CORS"
  type        = bool
  default     = false
}

variable "website_main_page" {
  description = "Page principale pour le bucket hébergeant le site web"
  type        = string
  default     = "index.html"
}

variable "website_not_found_page" {
  description = "Page d'erreur pour le bucket hébergeant le site web"
  type        = string
  default     = "404.html"
}
