provider "google" {
    credentials = file("C:/TERRAFORM/key/credentials.json")
  project = "causal-folder-478404-r1"
  region  = "us-central1"
  ##manoj
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"
  initial_node_count = 3
  deletion_protection = false
  node_config {
    machine_type = "e2-medium"
    disk_type    = "pd-standard"
  disk_size_gb = 50
      oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}