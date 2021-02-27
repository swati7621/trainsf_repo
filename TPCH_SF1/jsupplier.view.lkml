view: jsupplier {
  sql_table_name: "TPCH_SF1"."JSUPPLIER"
    ;;

  dimension: supplier {
    type: string
    sql: ${TABLE}."SUPPLIER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
