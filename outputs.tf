output "current_type" {
  description = "Current instance size and family"
  value       = local.cur_type
}
output "recommended_type" {
  description = "Densify recommended instance size and family"
  value       = local.rec_type
}
output "savings_estimate" {
  description = "The potential monthly savings from modifying the current instance to the Densify recommended instance"
  value       = local.savings
}
output "predicted_uptime" {
  description = "The predicted percentage of CPU utilization hours over the duration of a month"
  value       = local.p_uptime
}
output "implementation_method" {
  description = "The system configured to allow automated or manual recommendations"
  value       = local.implementation_method
}
output "current_cpu_request" {
  description = "Current CPU request for the Kubernetes container"
  value       = local.cur_cpu_request
}
output "recommended_cpu_request" {
  description = "Recommended CPU request for the Kubernetes container"
  value       = local.rec_cpu_request
}
output "current_cpu_limit" {
  description = "Current CPU limit for the Kubernetes container"
  value       = local.cur_cpu_limit
}
output "recommended_cpu_limit" {
  description = "Recommended CPU limit for the Kubernetes container"
  value       = local.rec_cpu_limit
}
output "current_mem_request" {
  description = "Current memory request for the Kubernetes container"
  value       = local.cur_mem_request
}
output "recommended_mem_request" {
  description = "Recommended memory request for the Kubernetes container"
  value       = local.rec_mem_request
}
output "current_mem_limit" {
  description = "Current memory limit for the Kubernetes container"
  value       = local.cur_mem_limit
}
output "recommended_mem_limit" {
  description = "Recommended memory limit for the Kubernetes container"
  value       = local.rec_mem_limit
}
output "instance_type" {
  description = "The instance size and family to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value       = local.instance_type
}
output "cpu_request" {
  description = "The CPU request to be implemented, which is either the current CPU request or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value       = local.cpu_request
}
output "cpu_limit" {
  description = "The CPU limit to be implemented, which is either the current CPU limit or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value       = local.cpu_limit
}
output "mem_request" {
  description = "The memory request to be implemented, which is either the current memory request or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value       = local.mem_request
}
output "mem_limit" {
  description = "The memory limit to be implemented, which is either the current memory limit or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value       = local.mem_limit
}
output "min_group_current" {
  description = "The current minimum group size of the ASG"
  value       = local.min_group_current
}
output "min_group_recommended" {
  description = "The recommended minimum group size of the ASG"
  value       = local.min_group_recommended
}
output "max_group_current" {
  description = "The current maximum group size of the ASG"
  value       = local.max_group_current
}
output "max_group_recommended" {
  description = "The recommended maximum group size of the ASG"
  value       = local.max_group_recommended
}
output "min_group" {
  description = "The minimum group size to be implemented, which is either the current minimum group size or the Densify recommended minimum group size depending on the automation policy and approval status (if approval is enabled)"
  value       = local.min_group
}
output "max_group" {
  description = "The maximum group size to be implemented, which is either the current maximum group size or the Densify recommended maximum group size depending on the automation policy and approval status (if approval is enabled)"
  value       = local.max_group
}
output "avg_inst_count_recommended" {
  description = "The predicted average number of instances running in the ASG if the recommendations are implemented"
  value       = local.avg_inst_count_recommended
}
output "current_desired_capacity" {
  description = "The current desired number of instances running in the ASG group"
  value       = local.current_desired_capacity
}
output "desired_capacity" {
  description = "The desired capacity to be implemented, which is either the current desired capacity or the recommended average instance count (rounded down) depending on the automation policy and approval status (if approval is enabled)"
  value       = local.desired_capacity
}
output "display_name" {
  description = "The display name of the container, which is a combination of the pod or service name and container name"
  value       = local.display_name
}
output "cluster" {
  description = "The name of the cluster with the running container"
  value       = local.cluster
}
output "namespace" {
  description = "The namespace of the running container"
  value       = local.namespace
}
output "pod_service" {
  description = "The pod or service name of the running container. If the container is running in a single pod, then the pod name is displayed. If the container is part of a service, such as a Replication Controller or a Replica Set, then the service name is displayed"
  value       = local.pod_service
}
output "container" {
  description = "The name of the container"
  value       = local.container
}
output "controller_type" {
  description = "The type of the controller"
  value       = local.controller_type
}
output "current_size" {
  description = "The current number of copies of the controller that are running. The value will be 1 for individual pods"
  value       = local.current_size
}
output "approval_type" {
  description = "The type of approval for this system (NA, All, Specific size)"
  value       = local.appr_type
}
output "recommendation_type" {
  description = "The type of recommendation (Upsize, Downsize, Resize, Just Right)"
  value       = local.recommendation_type
}
output "effort" {
  description = "The effort rating for implementing the recommendation"
  value       = local.effort
}
output "policy" {
  description = "The policy is used by the analysis"
  value       = local.policy
}
