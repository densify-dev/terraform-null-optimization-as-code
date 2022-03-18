# Azure Virtual Machine sample of self-aware and self-optimization

This example creates a single Azure Virtual Machine instance named "test" from sizing values in the densify_recommendations map. 
It also sets a number of tags on the VM instance to make it "self-aware".
The sample densify_recommendations map found in this directory is in the same format that Densify would provide.

## Prerequisites

Install and configure Azure CLI.

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

Creates an Azure Virtual Machine instance based on sizing from densify_recommendations sample, 
as well as the required resource group, subnet, network interface, and virtual network.
