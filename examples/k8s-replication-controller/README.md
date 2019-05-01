# Kubernetes Replication Controller sample of self-aware and self-optimization

This example creates a Replication Controller in Kubernetes with one Container in a Pod named "test" from sizing values 
in the densify_recommendations map. It also sets a number of labels on the Containter to make it "self-aware".
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
| densify_fallback | The default map values that are used if Densify recommendations are not available | Map | - | Yes |
| densify_unique_id | SThe unique identifier of the system to be updated | String | - | Yes |

## Outputs

Creates a Replication Controller containing one Container in Kubernetes based on sizing from densify_recommendations map sample.
