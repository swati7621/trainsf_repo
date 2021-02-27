connection: "train_sf"

# include all the views
include: "/INFORMATION_SCHEMA/**/*.view"
include: "/*.view"

datagroup: train_sf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

# explore: first_derived {}

persist_with: train_sf_default_datagroup

explore: applicable_roles {
  group_label: "Roles"
  label: "Applicable"
}

explore: columns {}

explore: databases {}

explore: enabled_roles {
  group_label: "Roles"
  label: "Enabled"
}

explore: external_tables {}

explore: file_formats {}

explore: functions {}

explore: information_schema_catalog_name {}

explore: load_history {}

explore: object_privileges {}

explore: pipes {}

explore: procedures {}

explore: referential_constraints {}

explore: replication_databases {}

explore: schemata {}

explore: sequences {}

explore: stages {}

explore: table_constraints {}

explore: table_privileges {}

explore: table_storage_metrics {}

explore: tables {}

explore: usage_privileges {}

explore: views {}
