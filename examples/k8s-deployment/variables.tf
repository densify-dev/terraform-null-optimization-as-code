#Name of the system.
variable "name" {
  default = "test-deployment"
}

variable "densify_recommendations" {
  type = "map"
  #sample map of map this would be generated by densify provided as a .auto.tfvars file that would have all the systems and info listed. 
  #In the file there would be multiple systems defined in this case it just has 1 called test-deployment. 
  #To see how it would work you can change the approvalType from all to na. As all assumes you have approved all changes and na would be used to say haven't approved the change and just want to make the system self-aware. 
  default = { 
    test-deployment = {
      recommendedCPURequest = "40m"
	  recommendedMemoryRequest = "128Mi"
	  recommendedCPULimit = "80m"
	  recommendedMemoryLimit = "256Mi"
	  currentCPURequest = "50m"
	  currentMemoryRequest = "256Mi"
	  currentCPULimit = "100m"
	  currentMemoryLimit = "512Mi"
      approvalType = "all"
    }
  }
}

# Defaults this is used for fallback if the system name isn't found in the densify_recommendations. 
# This shouldn't be used in most cases likely use would be if you were to create a new system that hasn't been analyzed by Densify yet.
variable "densify_fallback"{
  type = "map"
  default = {
	recommendedCPURequest = "50m"
	recommendedMemoryRequest = "256Mi"
	recommendedCPULimit = "100m"
	recommendedMemoryLimit = "512Mi"
	currentCPURequest = "50m"
	currentMemoryRequest = "256Mi"
	currentCPULimit = "100m"
	currentMemoryLimit = "512Mi"
    approvalType = "all"
  }
}