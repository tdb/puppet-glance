#
# Copyright 2022 Red Hat, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.
#
# == Class: glance::backend::reserved::staging
#
# Used to configure the os_glance_staging_store options
#
# === Parameters:
#
# [*filesystem_store_datadir*]
#   (optional) Directory where dist images are stored.
#   Defaults to $::os_service_default.
#
# [*filesystem_store_file_perm*]
#   (optional) File access permissions for the image files.
#   Defaults to $::os_service_default.
#
# [*filesystem_store_chunk_size*]
#   (optional) Chunk size, in bytes.
#   Defaults to $::os_service_default.
#
# [*filesystem_thin_provisioning*]
#   (optional) Boolean describing if thin provisioning is enabled or not
#   Defaults to $::os_service_default
#
class glance::backend::reserved::staging(
  $filesystem_store_datadir     = $::os_service_default,
  $filesystem_store_file_perm   = $::os_service_default,
  $filesystem_store_chunk_size  = $::os_service_default,
  $filesystem_thin_provisioning = $::os_service_default,
) {

  glance_api_config {
    'os_glance_staging_store/filesystem_store_datadir':     value => $filesystem_store_datadir;
    'os_glance_staging_store/filesystem_store_file_perm':   value => $filesystem_store_file_perm;
    'os_glance_staging_store/filesystem_store_chunk_size':  value => $filesystem_store_chunk_size;
    'os_glance_staging_store/filesystem_thin_provisioning': value => $filesystem_thin_provisioning;
  }
}