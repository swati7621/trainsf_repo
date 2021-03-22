connection: "train_sf"

# include all the views
include: "/INFORMATION_SCHEMA/**/*.view"
include: "/views/*.view"
datagroup: train_sf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

case_sensitive: no

explore: call_center {
  label: "Display Name - Call Center"
}

persist_with: train_sf_default_datagroup

explore: applicable_roles {
  description: "description string"
  label: "desired label name"
  group_label: "label to use as a heading in the Explore menu"
  view_label: "field picker heading to use for the Explore's fields"
  #extends: []
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
