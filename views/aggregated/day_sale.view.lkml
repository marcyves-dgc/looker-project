view: day_sale {
  sql_table_name: `sandbox-ymarcel.aggregated.day_sale`
    ;;

  dimension_group: day {
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
    sql: ${TABLE}.day ;;
  }

  dimension: total_product {
    type: number
    sql: ${TABLE}.total_product ;;
  }

  dimension: total_sale {
    type: number
    sql: ${TABLE}.total_sale ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
