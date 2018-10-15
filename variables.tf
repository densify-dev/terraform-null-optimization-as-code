variable "densify_recommendations"{
  description = "Map of maps generated from the Densify Terraform Forwarder. Contains all of the systems with the settings needed to provide details for tagging as Self-Aware and Self-Optimization"
  type = "map"
}
variable "densify_terraform_id" {
  description = "Unique ID that both Terraform and Densify can use to track the systems."
}
variable "densify_default"{
  description = "Fallback map of settings that are used for new infrastructure or systems that are missing sizing details from Densify."
  type = "map"
}
