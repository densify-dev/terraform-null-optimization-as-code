# AWS RDS sample of self-aware and self-optimization

This example creates a single MySQL RDS instance named "testdb" from sizing values in densify_recommendations. 
It also sets a number of tags on the RDS instance to make it "self-aware".
The sample densify_recommendations map found in this directory is in the same format that Densify would provide. 

## Prerequisites

Install and configure AWS CLI.

```bash
$ aws configure
```

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
| densify_unique_id | The unique identifier of the system to be updated | String | - | Yes |

## Outputs

Creates an AWS RDS instance based on sizing values from densify_recommendations map sample.
