variable "mwaa_environments" {
  description = <<EOT
Map of mwaa_environments, attributes below
Required:
    - dag_s3_path
    - execution_role_arn
    - name
    - source_bucket_arn
    - network_configuration (block):
        - security_group_ids (required)
        - subnet_ids (required)
Optional:
    - airflow_configuration_options
    - airflow_version
    - endpoint_management
    - environment_class
    - kms_key
    - max_webservers
    - max_workers
    - min_webservers
    - min_workers
    - plugins_s3_object_version
    - plugins_s3_path
    - region
    - requirements_s3_object_version
    - requirements_s3_path
    - schedulers
    - startup_script_s3_object_version
    - startup_script_s3_path
    - tags
    - tags_all
    - webserver_access_mode
    - weekly_maintenance_window_start
    - worker_replacement_strategy
    - logging_configuration (block):
        - dag_processing_logs (optional, block):
            - enabled (optional)
            - log_level (optional)
        - scheduler_logs (optional, block):
            - enabled (optional)
            - log_level (optional)
        - task_logs (optional, block):
            - enabled (optional)
            - log_level (optional)
        - webserver_logs (optional, block):
            - enabled (optional)
            - log_level (optional)
        - worker_logs (optional, block):
            - enabled (optional)
            - log_level (optional)
EOT

  type = map(object({
    dag_s3_path                      = string
    execution_role_arn               = string
    name                             = string
    source_bucket_arn                = string
    webserver_access_mode            = optional(string)
    tags_all                         = optional(map(string))
    tags                             = optional(map(string))
    startup_script_s3_path           = optional(string)
    startup_script_s3_object_version = optional(string)
    schedulers                       = optional(number)
    requirements_s3_path             = optional(string)
    requirements_s3_object_version   = optional(string)
    region                           = optional(string)
    plugins_s3_path                  = optional(string)
    min_workers                      = optional(number)
    weekly_maintenance_window_start  = optional(string)
    min_webservers                   = optional(number)
    max_workers                      = optional(number)
    max_webservers                   = optional(number)
    kms_key                          = optional(string)
    environment_class                = optional(string)
    endpoint_management              = optional(string)
    airflow_version                  = optional(string)
    airflow_configuration_options    = optional(map(string))
    plugins_s3_object_version        = optional(string)
    worker_replacement_strategy      = optional(string)
    network_configuration = object({
      security_group_ids = set(string)
      subnet_ids         = set(string)
    })
    logging_configuration = optional(object({
      dag_processing_logs = optional(object({
        enabled   = optional(bool)
        log_level = optional(string)
      }))
      scheduler_logs = optional(object({
        enabled   = optional(bool)
        log_level = optional(string)
      }))
      task_logs = optional(object({
        enabled   = optional(bool)
        log_level = optional(string)
      }))
      webserver_logs = optional(object({
        enabled   = optional(bool)
        log_level = optional(string)
      }))
      worker_logs = optional(object({
        enabled   = optional(bool)
        log_level = optional(string)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mwaa_environments : (
        v.max_webservers == null || (v.max_webservers >= 1 && v.max_webservers <= 5)
      )
    ])
    error_message = "must be between 1 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.mwaa_environments : (
        v.max_workers == null || (v.max_workers >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.mwaa_environments : (
        v.min_webservers == null || (v.min_webservers >= 1 && v.min_webservers <= 5)
      )
    ])
    error_message = "must be between 1 and 5"
  }
  validation {
    condition = alltrue([
      for k, v in var.mwaa_environments : (
        v.min_workers == null || (v.min_workers >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

