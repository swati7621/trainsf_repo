view: first_derived {
  derived_table: {
    sql: SELECT C_NAME, C_ADDRESS, C_PHONE FROM "TPCH_SF100"."CUSTOMER"
      ;;
  }

  measure: count {
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
