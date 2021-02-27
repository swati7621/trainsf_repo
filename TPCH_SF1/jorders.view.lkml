view: jorders {
  sql_table_name: "TPCH_SF1"."JORDERS"
    ;;

  dimension: orders {
    type: string
    sql: ${TABLE}."ORDERS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
