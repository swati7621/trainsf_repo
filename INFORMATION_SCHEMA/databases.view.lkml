view: databases {
  sql_table_name: "INFORMATION_SCHEMA"."DATABASES"
    ;;

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: database_owner {
    type: string
    sql: ${TABLE}."DATABASE_OWNER" ;;
  }

  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
  }

  dimension_group: last_altered {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension_group: duration_test {
    type: duration
    intervals: [hour,month,day,minute]
    sql_start: ${created_date} ;;
    sql_end: ${last_altered_date} ;;
  }














  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
