locals{
  temp_map = "${merge(map(var.densify_unique_id, var.default_fallback),var.densify_recommendations)}"
  densify_spec = "${local.temp_map[var.densify_unique_id]}"
  cur_type = "${lookup(local.densify_spec,"currentType","na")}"
  rec_type = "${lookup(local.densify_spec,"recommendedType","na")}"
  savings = "${lookup(local.densify_spec,"savingsEstimate","na")}"
  p_uptime = "${lookup(local.densify_spec,"predictedUptime","na")}"
  ri_cover = "${lookup(local.densify_spec,"reservedInstanceCoverage","na")}"
  appr_type = "${lookup(local.densify_spec,"approvalType","na")}"
  recommendation_type = "${lookup(local.densify_spec,"recommendationType","na")}"
  effort = "${lookup(local.densify_spec,"effortEstimate","na")}"
  policy = "${lookup(local.densify_spec,"densifyPolicy","na")}"
  self_optimizing = "${lookup(local.densify_spec,"selfOptimizingAutomation","na")}"
  rec_cpu_request = "${lookup(local.densify_spec,"recommendedCPURequest","na")}"
  cur_cpu_request = "${lookup(local.densify_spec,"currentCPURequest","na")}"
  rec_cpu_limit = "${lookup(local.densify_spec,"recommendedCPULimit","na")}"
  cur_cpu_limit = "${lookup(local.densify_spec,"currentCPULimit","na")}"
  rec_mem_request = "${lookup(local.densify_spec,"recommendedMemoryRequest","na")}"
  cur_mem_request = "${lookup(local.densify_spec,"currentMemoryRequest","na")}"
  rec_mem_limit = "${lookup(local.densify_spec,"recommendedMemoryLimit","na")}"
  cur_mem_limit = "${lookup(local.densify_spec,"currentMemoryLimit","na")}"
  
  instance_type = "${local.cur_type == "na" ?
		"na" : 
		local.recommendation_type == "Terminate" ? 
			local.cur_type:
			local.appr_type == "all" ? 
				local.rec_type : 
				local.appr_type == local.rec_type ? 
					local.rec_type : 
					local.cur_type}"
  cpu_request = "${local.rec_cpu_request == "na" ?
		"na" : 
		local.appr_type == "all" ? 
			local.rec_cpu_request : 
			local.appr_type == local.rec_cpu_request ? 
				local.rec_cpu_request : 
				local.cur_cpu_request}"
  cpu_limit = "${local.rec_cpu_limit == "na" ?
		"na" : 
		local.appr_type == "all" ? 
			local.rec_cpu_limit : 
			local.appr_type == local.rec_cpu_limit ? 
				local.rec_cpu_limit : 
				local.cur_cpu_limit}"
  mem_request = "${local.rec_mem_request == "na" ?
		"na" : 
		local.appr_type == "all" ? 
			local.rec_mem_request : 
			local.appr_type == local.rec_mem_request ? 
				local.rec_mem_request : 
				local.cur_mem_request}"
  mem_limit = "${local.rec_mem_limit == "na" ?
		"na" : 
		local.appr_type == "all" ? 
			local.rec_mem_limit : 
			local.appr_type == local.rec_mem_limit ? 
				local.rec_mem_limit : 
				local.cur_mem_limit}"
}

resource "null_resource" "densify_spec" {
  triggers = "${local.temp_map[var.densify_unique_id]}"
}
 