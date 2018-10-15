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
  description = "Current CPU limit for Kukbernetes"
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
output "approved_instance_type" {
  description = "The resulting instance size for implementation based on the recommended or current size with Densify self-optimize policy and approval settings applied"
  value = "${local.approved_instance_type}"
}
output "cpu_request" {
  description = "The resulting CPU request for implementation based on the recommended or current size with Densify self-optimize policy and approval settings applied"
  value = "${local.cpu_request}"
}
output "cpu_limit" {
  description = "The resulting CPU limit for implementation based on the recommended or current size with Densify self-optimize policy and approval settings applied"
  value = "${local.cpu_limit}"
}
output "mem_request" {
  description = "The resulting memory request for implementation based on the recommended or current size with Densify self-optimize policy and approval settings applied"
  value = "${local.mem_request}"
}
output "mem_limit" {
  description = "The resulting memory limit for implementation based on the recommended or current size with Densify self-optimize policy and approval settings applied"
  value = "${local.mem_limit}"
}
