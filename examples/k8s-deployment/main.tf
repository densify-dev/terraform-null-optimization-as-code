provider "kubernetes" {}

module "densify" {
  source  = "../.."

  densify_recommendations = "${var.densify_recommendations}"
  densify_fallback = "${var.densify_fallback}"
  # In this sample we are using the system name as the unique idenifier but if you had multiple systems that had the same name this should be set uniquely to make sure the correct recommendations are set\applied for each system.
  densify_unique_id = "${var.name}"
}

resource "kubernetes_deployment" "test-deployment" {
  metadata {
    name = "${var.name}"
    # tag container to make it Self-Aware these tags are optional and can set as few or as many as you like.
    labels {
      test = "test-deployment"
	  Current-CPU-Request = "${module.densify.current_cpu_request}"
	  Current-Memory-Request = "${module.densify.current_mem_request}"
	  Current-CPU-Limit = "${module.densify.current_cpu_limit}"
	  Current-Memory-Limit = "${module.densify.current_mem_limit}"
	  Densify-Recommended-CPU-Request = "${module.densify.recommended_cpu_request}"
	  Densify-Recommended-Memory-Request = "${module.densify.recommended_mem_request}"
	  Densify-Recommended-CPU-Limit = "${module.densify.recommended_cpu_limit}"
	  Densify-Recommended-Memory-Limit = "${module.densify.recommended_mem_limit}"
	  #Should match the densify_unique_id value as this is how Densify references the system as unique
	  Densify-Unique-ID = "${var.name}"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        test = "test-deployment"
      }
    }

    template {
      metadata {
        labels {
          test = "test-deployment"
        }
      }

      spec {
        container {
          image = "nginx:1.7.8"
          name  = "${var.name}"

          resources{
            limits{
              # normal way of sizing an instance by hardcoding the size.
	          #cpu = "50m"
	          #memory = "256Mi"
	          # new self-optimizing instance type from Densify
	          cpu = "${module.densify.cpu_request}"
	          memory = "${module.densify.mem_request}"
            }
            requests{
              # normal way of sizing an instance by hardcoding the size.
		      #cpu = "500m"
		      #memory = "512Mi"
		      # new self-optimizing instance type from Densify
		      cpu = "${module.densify.cpu_limit}"
		      memory = "${module.densify.mem_limit}"
            }
          }
        }
      }
    }
  }
}