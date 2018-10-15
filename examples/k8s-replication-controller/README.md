# Kubernetes Replication Controller sample of self-aware and self-optimization

Configuration in this directory creates a replication controller with 1 container in a pod named test that has its size set based on the values in the densify_recommendations which is a sample of the format that would get from Densify. Also this will set a number of labels on the container to make it self-aware. 

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

Will create an Replication Controller containing 1 container in Kubernetes based on sizing from sample densify_recommendations