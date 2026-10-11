output "mwaa_environments_id" {
  description = "Map of id values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mwaa_environments_airflow_configuration_options" {
  description = "Map of airflow_configuration_options values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.airflow_configuration_options if v.airflow_configuration_options != null && length(v.airflow_configuration_options) > 0 }
  sensitive   = true
}
output "mwaa_environments_airflow_version" {
  description = "Map of airflow_version values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.airflow_version if v.airflow_version != null && length(v.airflow_version) > 0 }
}
output "mwaa_environments_arn" {
  description = "Map of arn values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "mwaa_environments_created_at" {
  description = "Map of created_at values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "mwaa_environments_dag_s3_path" {
  description = "Map of dag_s3_path values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.dag_s3_path if v.dag_s3_path != null && length(v.dag_s3_path) > 0 }
}
output "mwaa_environments_database_vpc_endpoint_service" {
  description = "Map of database_vpc_endpoint_service values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.database_vpc_endpoint_service if v.database_vpc_endpoint_service != null && length(v.database_vpc_endpoint_service) > 0 }
}
output "mwaa_environments_endpoint_management" {
  description = "Map of endpoint_management values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.endpoint_management if v.endpoint_management != null && length(v.endpoint_management) > 0 }
}
output "mwaa_environments_environment_class" {
  description = "Map of environment_class values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.environment_class if v.environment_class != null && length(v.environment_class) > 0 }
}
output "mwaa_environments_execution_role_arn" {
  description = "Map of execution_role_arn values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "mwaa_environments_kms_key" {
  description = "Map of kms_key values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.kms_key if v.kms_key != null && length(v.kms_key) > 0 }
}
output "mwaa_environments_last_updated" {
  description = "Map of last_updated values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.last_updated if v.last_updated != null && length(v.last_updated) > 0 }
}
output "mwaa_environments_logging_configuration" {
  description = "Map of logging_configuration values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => one(v.logging_configuration) if v.logging_configuration != null && length(v.logging_configuration) > 0 }
}
output "mwaa_environments_max_webservers" {
  description = "Map of max_webservers values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.max_webservers if v.max_webservers != null }
}
output "mwaa_environments_max_workers" {
  description = "Map of max_workers values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.max_workers if v.max_workers != null }
}
output "mwaa_environments_min_webservers" {
  description = "Map of min_webservers values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.min_webservers if v.min_webservers != null }
}
output "mwaa_environments_min_workers" {
  description = "Map of min_workers values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.min_workers if v.min_workers != null }
}
output "mwaa_environments_name" {
  description = "Map of name values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mwaa_environments_network_configuration" {
  description = "Map of network_configuration values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => one(v.network_configuration) if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "mwaa_environments_plugins_s3_object_version" {
  description = "Map of plugins_s3_object_version values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.plugins_s3_object_version if v.plugins_s3_object_version != null && length(v.plugins_s3_object_version) > 0 }
}
output "mwaa_environments_plugins_s3_path" {
  description = "Map of plugins_s3_path values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.plugins_s3_path if v.plugins_s3_path != null && length(v.plugins_s3_path) > 0 }
}
output "mwaa_environments_region" {
  description = "Map of region values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "mwaa_environments_requirements_s3_object_version" {
  description = "Map of requirements_s3_object_version values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.requirements_s3_object_version if v.requirements_s3_object_version != null && length(v.requirements_s3_object_version) > 0 }
}
output "mwaa_environments_requirements_s3_path" {
  description = "Map of requirements_s3_path values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.requirements_s3_path if v.requirements_s3_path != null && length(v.requirements_s3_path) > 0 }
}
output "mwaa_environments_schedulers" {
  description = "Map of schedulers values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.schedulers if v.schedulers != null }
}
output "mwaa_environments_service_role_arn" {
  description = "Map of service_role_arn values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.service_role_arn if v.service_role_arn != null && length(v.service_role_arn) > 0 }
}
output "mwaa_environments_source_bucket_arn" {
  description = "Map of source_bucket_arn values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.source_bucket_arn if v.source_bucket_arn != null && length(v.source_bucket_arn) > 0 }
}
output "mwaa_environments_startup_script_s3_object_version" {
  description = "Map of startup_script_s3_object_version values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.startup_script_s3_object_version if v.startup_script_s3_object_version != null && length(v.startup_script_s3_object_version) > 0 }
}
output "mwaa_environments_startup_script_s3_path" {
  description = "Map of startup_script_s3_path values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.startup_script_s3_path if v.startup_script_s3_path != null && length(v.startup_script_s3_path) > 0 }
}
output "mwaa_environments_status" {
  description = "Map of status values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.status if v.status != null && length(v.status) > 0 }
}
output "mwaa_environments_tags" {
  description = "Map of tags values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mwaa_environments_tags_all" {
  description = "Map of tags_all values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "mwaa_environments_webserver_access_mode" {
  description = "Map of webserver_access_mode values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.webserver_access_mode if v.webserver_access_mode != null && length(v.webserver_access_mode) > 0 }
}
output "mwaa_environments_webserver_url" {
  description = "Map of webserver_url values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.webserver_url if v.webserver_url != null && length(v.webserver_url) > 0 }
}
output "mwaa_environments_webserver_vpc_endpoint_service" {
  description = "Map of webserver_vpc_endpoint_service values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.webserver_vpc_endpoint_service if v.webserver_vpc_endpoint_service != null && length(v.webserver_vpc_endpoint_service) > 0 }
}
output "mwaa_environments_weekly_maintenance_window_start" {
  description = "Map of weekly_maintenance_window_start values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.weekly_maintenance_window_start if v.weekly_maintenance_window_start != null && length(v.weekly_maintenance_window_start) > 0 }
}
output "mwaa_environments_worker_replacement_strategy" {
  description = "Map of worker_replacement_strategy values across all mwaa_environments, keyed the same as var.mwaa_environments"
  value       = { for k, v in aws_mwaa_environment.mwaa_environments : k => v.worker_replacement_strategy if v.worker_replacement_strategy != null && length(v.worker_replacement_strategy) > 0 }
}

