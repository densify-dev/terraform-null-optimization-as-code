provider "google" {
}

module "densify" {
  source  = "../.."

  densify_recommendations = "${var.densify_recommendations}"
  densify_fallback = "${var.densify_fallback}"
  # In this sample we are using the system name as the unique idenifier but if you had multiple systems that had the same name this should be set uniquely to make sure the correct recommendations are set\applied for each system.
  densify_unique_id = "${var.name}"
}

resource "google_compute_instance" "test" {
  name         = "test"
  zone         = "us-central1-a"
  allow_stopping_for_update = true
  
  # normal way of sizing an instance by hardcoding the size.
  #machine_type = "n1-standard-2"

  # new self-optimizing instance type from Densify
  machine_type = "${module.densify.instance_type}"

  
  # label instance to make it Self-Aware these labels are optional and can set as few or as many as you like.
  labels = {
	name = "${var.name}"
	current_instance_type = "${module.densify.Current_type}"
    densify_optimal_instance_type = "${module.densify.recommended_type}"
    densify_recommend_ri_coverage = "${module.densify.recommend_ri_coverage}"
	#Should match the densify_unique_id value as this is how Densify references the system as unique
	densify_unique_id = "${var.name}"
  }
  
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}