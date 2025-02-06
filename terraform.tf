provider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

module "cloud_run_service" {
  source     = "path_to_your_cloud_run_module" # Update this path to the location of your Cloud Run module
  name       = "your-service-name"
  image      = "gcr.io/your-gcp-project-id/your-image-name"
  region     = "us-central1"
  max_scaling = 10  # Example parameter, adjust as needed

  # Add any additional parameters required by your Cloud Run module
}

output "service_url" {
  value = module.cloud_run_service.url
}
