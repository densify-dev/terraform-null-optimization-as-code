provider "aws" {
  region     = "us-east-2"
}

module "densify" {
  source  = "../.."

  densify_recommendations = "${var.densify_recommendations}"
  densify_fallback = "${var.densify_fallback}"
  # In this sample we are using the system name as the unique idenifier but if you had multiple systems that had the same name this should be set uniquely to make sure the correct recommendations are set\applied for each system.
  densify_unique_id = "${var.name}"
}

resource "aws_launch_template" "create" {
  name_prefix = "create"
  image_id = "ami-31c7f654"
  # normal way of sizing an instance by hardcoding the size.
  #instance_type = "m4.large"

  # new self-optimizing instance type from Densify
  instance_type = "${module.densify.instance_type}"
}

resource "aws_autoscaling_group" "create" {
  availability_zones = ["us-east-2a"]
  desired_capacity = "${module.densify.desired_capacity}"
  max_size = "${module.densify.max_group}"
  min_size = "${module.densify.min_group}"
  launch_template = {
    id = "${aws_launch_template.create.id}"
    version = "$$Latest"
  }
  tag {
    key = "Densify-optimal-instance-type"
    value = "${module.densify.recommended_type}"
    propagate_at_launch = false
  }
}