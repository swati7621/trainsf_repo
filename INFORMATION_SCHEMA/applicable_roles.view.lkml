view: applicable_roles {
  label: "Applicable roles view"
  sql_table_name: "INFORMATION_SCHEMA"."APPLICABLE_ROLES"
    ;;

  dimension: grantee {
    group_label: "grantee Group"
    type: string
    sql: ${TABLE}."GRANTEE" ;;
  }

  dimension: is_grantable {
    group_label: "grantee Group"
    type: string
    sql: ${TABLE}."IS_GRANTABLE" ;;
  }

  dimension: role_name {
    group_label: "Role roup"
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }

  dimension: role_owner {
    group_label: "Role roup"
    type: string
    sql: ${TABLE}."ROLE_OWNER" ;;
  }

  # dimension: role {
  #   description: "Cretaed for demo"
  #   type: string
  #   sql: ${TABLE}."ROLE" ;;
  # }

  measure: count {
    type: count
    drill_fields: [role_name]
  }
}
