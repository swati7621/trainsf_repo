view: first_derived {
  label: "desired label "

  # group_label: "label used to group dimensions in the field picker"
  # group_item_label: "label to use for the field under its group label in the field picker"
  # description: "description string"
  # hidden: yes | no
  # alias: [old_field_name, old_field_name, …]

  derived_table: {
    sql: SELECT C_NAME, C_ADDRESS, C_PHONE FROM "TPCH_SF100"."CUSTOMER"
      ;;
  }

  measure: count {
    view_label: "desired view lab measure"
    group_label: "measure cnt"
    group_item_label: "measure cnt group "
    type: count
    drill_fields: [detail*]
  }

  dimension: c_name {
    type: string
    sql: ${TABLE}."C_NAME" ;;
  }

  dimension: cust_name_upper {
    type: string
    sql: upper(${c_name}) ;;
  }

  dimension: c_address {
    type: string
    sql: ${TABLE}."C_ADDRESS" ;;
  }

  dimension: c_phone {
    type: string
    sql: ${TABLE}."C_PHONE" ;;
  }

  set: detail {
    fields: [c_name, c_address, c_phone]
  }
}
