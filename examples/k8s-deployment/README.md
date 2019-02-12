# Kubernetes Deployment sample of self-aware and self-optimization

This example creates a deployment with a single container named "test-deployment" in Kubernetes from sizing values in the densify_recommendations map. 
It also sets a number of labels on the Deployment to make it "self-aware".
The sample densify_recommendations map found in this directory is in the Densify provided format.

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
| densify_fallback | The map default values used if Densify recommendations are not available | Map | - | Yes |
| densify_unique_id | The unique identifier of the system to be updated | String | - | Yes |

## Outputs

Creates a Deployment containing one container in Kubernetes based on sizing from the densify_recommendations map sample.
