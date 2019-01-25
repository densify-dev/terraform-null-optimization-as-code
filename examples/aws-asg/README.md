# AWS ASG sample of self-aware and self-optimization

This example creates a single Auto Scaling group (ASG) named "test" from the sizing values in the densify_recommendations map. 
It also assigns a number of tags to the ASG, making it "self-aware".
Densify provide recommendations in terraform-map format similar to the sample densify_recommendations map found in this directory.  

## Usage

To run this example, you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| densify_recommendations | Map variable containing recommendations from Densify | Map | - | Yes |
| densify_fallback | The map default values used if Densify recommendations are not available | Map | - | Yyes |
| densify_unique_id | The unique identifier of the ASG to be updated | String | - | Yes |

## Outputs

Creates an AWS ASG based on sizing values from densify_recommendations map.
