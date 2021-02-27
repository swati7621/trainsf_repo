view: jpartsupp {
  sql_table_name: "TPCH_SF1"."JPARTSUPP"
    ;;

  dimension: partsupp {
    type: string
    sql: ${TABLE}."PARTSUPP" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
