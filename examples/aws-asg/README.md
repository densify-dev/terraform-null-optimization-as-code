# AWS ASG sample of self-aware and self-optimization

This example creates a single ASG group named "test" from the sizing values in densify_recommendations. 
It also sets a number of tags on the ASG group to make it "self-aware".
The sample densify_recommendations map found in this directory is in the same format that Densify would provide.  

## Usage

To run this example you need to execute:

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
| densify_unique_id | The unique identifier of the system to be updated | String | - | Yes |

## Outputs

Creates an AWS ASG Group based on sizing values from densify_recommendations map sample.
