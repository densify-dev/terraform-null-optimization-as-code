# AWS EC2 sample of self-aware and self-optimization

This example creates a single EC2 instance named "test" from the sizing values in densify_recommendations. 
It also sets a number of tags on the EC2 instance to make it "self-aware".
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
| densify_recommendations | Map of maps that contains the recommendations from Densify | Map | - | Yes |
| densify_fallback | Default values to use if the system is not found in the results from Densify | Map | - | Yyes |
| densify_unique_id | System identifier to uniquely identify which system is being updated | String | - | Yes |

## Outputs

Creates an AWS EC2 instance based on sizing values from densify_recommendations map sample.
