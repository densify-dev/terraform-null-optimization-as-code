provider "aws" {
  region     = "us-east-2"
}

module "densify" {
  source  = "../.."

  densify_recommendations = "${var.densify_recommendations}"
  default_fallback = "${var.default_fallback}"
  # In this sample we are using the system name as the unique idenifier but if you had multiple systems that had the same name this should be set uniquely to make sure the correct recommendations are set\applied for each system.
  densify_unique_id = "${var.name}"
}

resource "aws_instance" "create" {
  ami           = "ami-31c7f654"

  # normal way of sizing an instance by hardcoding the size.
  #instance_type = "m4.large"

  # new self-optimizing instance type from Densify
  instance_type = "${module.densify.instance_type}"

  # tag instance to make it Self-Aware these tags are optional and can set as few or as many as you like.
  tags {
    Name = "${var.name}"
	Current-instance-type = "${module.densify.Current_type}"
    Densify-optimal-instance-type = "${module.densify.recommended_type}"
    Densify-potential-monthly-savings = "${module.densify.savings_estimate}"
    Densify-predicted-uptime = "${module.densify.predicted_uptime}"
    Densify-recommend-RI-coverage = "${module.densify.recommend_ri_coverage}"
	#Should match the densify_unique_id value as this is how Densify references the system as unique
	Densify-Terraform-ID = "${var.name}"
  }
 
}
