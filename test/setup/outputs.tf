/**
 * Copyright 2024 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  value = module.project.project_id
}

output "sa_key" {
  value     = google_service_account_key.int_test.private_key
  sensitive = true
}

output "cloudsql_pg_sa" {
  value       = google_service_account.cloudsql_pg_sa.email
  description = "IAM service account user created for Cloud SQL for PostgreSQL."
}

output "cloudsql_mysql_sa" {
  value       = google_service_account.cloudsql_mysql_sa.email
  description = "IAM service account user created for Cloud SQL for MySql."
}

output "key_project_id" {
  value = module.autokey-project.project_id
}

output "folder_id" {
  value = google_folder.autokey_folder.folder_id
}
