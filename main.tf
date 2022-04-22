locals {
  temp_map = merge({ 
      (var.densify_unique_id) = var.densify_fallback
    },
    var.densify_recommendations
  )

  densify_spec               = contains(keys(var.densify_recommendations),var.densify_unique_id) ? var.densify_recommendations[var.densify_unique_id] : var.densify_fallback
  # cur_type                   = lookup(local.densify_spec, "currentType", "na")
  # rec_type                   = lookup(local.densify_spec, "recommendedType", "na")
  # replace the azure vm type with the proper casing from the lookup object
  cur_type_original                   = lookup(local.densify_spec, "currentType", "na")
  rec_type_original                   = lookup(local.densify_spec, "recommendedType", "na")
  cur_type = format(
        replace(local.cur_type_original, "/^(${join("|", keys(local.densify_azure_vmsize_lookup))})$/", "%s"),
        [
          for value in flatten(regexall("^(${join("|", keys(local.densify_azure_vmsize_lookup))})$", local.cur_type_original)) :
            lookup(local.densify_azure_vmsize_lookup, value)
        ]...
      )
  rec_type = format(
        replace(local.rec_type_original, "/^(${join("|", keys(local.densify_azure_vmsize_lookup))})$/", "%s"),
        [
          for value in flatten(regexall("^(${join("|", keys(local.densify_azure_vmsize_lookup))})$", local.rec_type_original)) :
            lookup(local.densify_azure_vmsize_lookup, value)
        ]...
      )

  savings                    = lookup(local.densify_spec, "savingsEstimate", "na")
  p_uptime                   = lookup(local.densify_spec, "predictedUptime", "na")
  implementation_method      = lookup(local.densify_spec, "implementationMethod", "na")  
  appr_type                  = lookup(local.densify_spec, "approvalType", "na")
  recommendation_type        = lookup(local.densify_spec, "recommendationType", "na")
  effort                     = lookup(local.densify_spec, "effortEstimate", "na")
  policy                     = lookup(local.densify_spec, "densifyPolicy", "na")
  cur_cpu_request            = lookup(local.densify_spec, "currentCpuRequest", "na")
  rec_cpu_request            = lookup(local.densify_spec, "recommendedCpuRequest", "na")
  cur_cpu_limit              = lookup(local.densify_spec, "currentCpuLimit", "na")
  rec_cpu_limit              = lookup(local.densify_spec, "recommendedCpuLimit", "na")
  cur_mem_request            = lookup(local.densify_spec, "currentMemRequest", "na")
  rec_mem_request            = lookup(local.densify_spec, "recommendedMemRequest", "na")
  cur_mem_limit              = lookup(local.densify_spec, "currentMemLimit", "na")
  rec_mem_limit              = lookup(local.densify_spec, "recommendedMemLimit", "na")
  min_group_current          = lookup(local.densify_spec, "minGroupCurrent", "-1")
  min_group_recommended      = lookup(local.densify_spec, "minGroupRecommended", "-1")
  max_group_current          = lookup(local.densify_spec, "maxGroupCurrent", "-1")
  max_group_recommended      = lookup(local.densify_spec, "maxGroupRecommended", "-1")
  avg_inst_count_recommended = lookup(local.densify_spec, "avgInstanceCountRecommended", "-1")
  current_desired_capacity   = lookup(local.densify_spec, "currentDesiredCapacity", "-1")
  display_name               = lookup(local.densify_spec, "displayName", "na")
  cluster                    = lookup(local.densify_spec, "cluster", "na")
  namespace                  = lookup(local.densify_spec, "namespace", "na")
  pod_service                = lookup(local.densify_spec, "podService", "na")
  container                  = lookup(local.densify_spec, "container", "na")
  controller_type            = lookup(local.densify_spec, "controllerType", "na")
  current_size               = lookup(local.densify_spec, "currentCount", "-1")
  power_state                = lookup(local.densify_spec, "powerState", "na")
  defer_recommendation       = lookup(local.densify_spec, "deferRecommendation", "na")
  defer_until                = lookup(local.densify_spec, "deferUntil", "na")
  avg_inst_count_current     = lookup(local.densify_spec, "avgInstanceCountCurrent", "-1")

  instance_type = local.cur_type == "na" ? "na" : local.recommendation_type == "Terminate" ? local.cur_type : local.appr_type == "all" ? local.rec_type : local.appr_type == local.rec_type ? local.rec_type : local.cur_type

  cpu_request = local.rec_cpu_request == "na" ? "na" : local.appr_type == "all" ? local.rec_cpu_request : local.appr_type == local.rec_cpu_request ? local.rec_cpu_request : local.cur_cpu_request

  cpu_limit = local.rec_cpu_limit == "na" ? "na" : local.appr_type == "all" ? local.rec_cpu_limit : local.appr_type == local.rec_cpu_limit ? local.rec_cpu_limit : local.cur_cpu_limit

  mem_request = local.rec_mem_request == "na" ? "na" : local.appr_type == "all" ? local.rec_mem_request : local.appr_type == local.rec_mem_request ? local.rec_mem_request : local.cur_mem_request

  mem_limit = local.rec_mem_limit == "na" ? "na" : local.appr_type == "all" ? local.rec_mem_limit : local.appr_type == local.rec_mem_limit ? local.rec_mem_limit : local.cur_mem_limit

  desired_capacity = local.current_desired_capacity == "-1" ? "-1" : local.appr_type == "all" ? floor(local.avg_inst_count_recommended) : local.current_desired_capacity

  min_group = local.min_group_current == "-1" ? "-1" : local.appr_type == "all" ? local.min_group_recommended : local.min_group_current

  max_group = local.max_group_current == "-1" ? "-1" : local.appr_type == "all" ? local.max_group_recommended : local.max_group_current
}

resource "null_resource" "densify_spec" {
  triggers = local.temp_map[var.densify_unique_id]
}

