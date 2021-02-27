view: jcustomer {
  sql_table_name: "TPCH_SF1"."JCUSTOMER"
    ;;

  dimension: customer {
    type: string
    sql: ${TABLE}."CUSTOMER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
