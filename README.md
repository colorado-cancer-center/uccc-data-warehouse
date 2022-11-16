## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.43.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset.dataset](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |
| [google_logging_project_sink.audit](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_project_sink) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_iam_audit_config.all_services](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_audit_config) | resource |
| [google_project_service.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [random_id.id](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The billing account to attach to the project | `any` | n/a | yes |
| <a name="input_dataset_description"></a> [dataset\_description](#input\_dataset\_description) | Description of the bigquery dataset | `string` | n/a | yes |
| <a name="input_dataset_name"></a> [dataset\_name](#input\_dataset\_name) | Name of the bigquery dataset | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | The organization into which to place the project | `string` | `""` | no |
| <a name="input_owner_email"></a> [owner\_email](#input\_owner\_email) | Email address of the owner of the bigquery dataset | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name for the project | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The google region for the project | `string` | `"us-central1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dataset_id"></a> [dataset\_id](#output\_dataset\_id) | The google bigquery dataset id |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The final project id |
