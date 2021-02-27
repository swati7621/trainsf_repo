view: jnation {
  sql_table_name: "TPCH_SF10000"."JNATION"
    ;;

  dimension: nation {
    type: string
    sql: ${TABLE}."NATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
