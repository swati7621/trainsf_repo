view: jlineitem {
  sql_table_name: "TPCH_SF10000"."JLINEITEM"
    ;;

  dimension: lineitem {
    type: string
    sql: ${TABLE}."LINEITEM" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
