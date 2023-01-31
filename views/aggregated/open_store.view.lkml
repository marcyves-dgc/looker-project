view: open_store {
  sql_table_name: `sandbox-ymarcel.aggregated.open_store`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: coordinate {
    type: string
    sql: ${TABLE}.coordinate ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: creation_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creation_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: nb_countries {
    type:  count_distinct
    sql: ${country} ;;
  }
}
