output "Current_type" {
  description = "Current instance size"
  value = "${local.cur_type}"
}
output "recommended_type" {
  description = "Densify recommended instance size"
  value = "${local.rec_type}"
}
output "savings_estimate" {
  description = "The potential monthly savings from modifying the current instance to the Densify recommended instance"
  value = "${local.savings}"
}
output "predicted_uptime" {
  description = "The predicted percentage of CPU utilization hours over the duration of a month"
  value = "${local.p_uptime}"
}
output "recommend_ri_coverage" {
  description = "Densify recommends purchasing reserved instance coverage for this instance"
  value = "${local.ri_cover}"
}
output "current_cpu_request" {
  description = "Current CPU request for Kubernetes"
  value = "${local.cur_cpu_request}"
}
output "recommended_cpu_request" {
  description = "Recommended CPU request for Kubernetes"
  value = "${local.rec_cpu_request}"
}
output "current_cpu_limit" {
  description = "Current CPU limit for Kubernetes"
  value = "${local.cur_cpu_limit}"
}
output "recommended_cpu_limit" {
  description = "Recommended CPU limit for Kubernetes"
  value = "${local.rec_cpu_limit}"
}
output "current_mem_request" {
  description = "Current memory request for Kubernetes"
  value = "${local.cur_mem_request}"
}
output "recommended_mem_request" {
  description = "Recommended memory request for Kubernetes"
  value = "${local.rec_mem_request}"
}
output "current_mem_limit" {
  description = "Current memory limit for Kubernetes"
  value = "${local.cur_mem_limit}"
}
output "recommended_mem_limit" {
  description = "Recommended memory limit for Kubernetes"
  value = "${local.rec_mem_limit}"
}
output "instance_type" {
  description = "The instance size and family to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value = "${local.instance_type}"
}
output "cpu_request" {
  description = "The CPU request to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value = "${local.cpu_request}"
}
output "cpu_limit" {
  description = "The CPU limit to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value = "${local.cpu_limit}"
}
output "mem_request" {
  description = "The memory request to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value = "${local.mem_request}"
}
output "mem_limit" {
  description = "The memory limit to be implemented, which is either the current size or the Densify recommendation, depending on the automation policy and the approval status (if approval is enabled)"
  value = "${local.mem_limit}"
}
output "min_group_current" {
  description = "The current minimum group size of the ASG"
  value = "${local.min_group_current}"
}
output "min_group_recommended" {
  description = "The recommended minimum group size of the ASG"
  value = "${local.min_group_recommended}"
}
output "max_group_current" {
  description = "The current maximum group size of the ASG"
  value = "${local.max_group_current}"
}
output "max_group_recommended" {
  description = "The recommended maximum group size of the ASG"
  value = "${local.max_group_recommended}"
}
output "min_group" {
  description = "The minimum group size to be implemented, which is either the current minimum group size or the Densify recommended minimum group size depending on the automation policy and approval status (if approval is enabled)"
  value = "${local.min_group}"
}
output "max_group" {
  description = "The maximum group size to be implemented, which is either the current maximum group size or the Densify recommended maximum group size depending on the automation policy and approval status (if approval is enabled)"
  value = "${local.max_group}"
}
output "avg_inst_count_recommended" {
  description = "The predicted average number of instances running in the ASG if the recommendations are implemented"
  value = "${local.avg_inst_count_recommended}"
}
output "current_desired_capacity" {
  description = "The current desired number of instances running in the ASG group"
  value = "${local.current_desired_capacity}"
}
output "desired_capacity" {
  description = "The desired capacity to be implemented, which is either the current desired capacity or the recommended average instance count (rounded down) depending on the automation policy and approval status (if approval is enabled)"
  value = "${local.desired_capacity}"
}
output "display_name" {
  description = "The display name of the container which is combination of the Pod\Service name and Container name"
  value = "${local.display_name}"
}
output "cluster" {
  description = "The name of the cluster the container is running in"
  value = "${local.cluster}"
}
output "namespace" {
  description = "The namespace the container is running in"
  value = "${local.namespace}"
}
output "pod_service" {
  description = "The pod or service name the container is running in. If it is a single pod it will be the pod name otherwise if the container is part of a service such as Replication Controller, Replica Set it will be the name of the service"
  value = "${local.pod_service}"
}
output "container" {
  description = "The name of the container"
  value = "${local.container}"
}
