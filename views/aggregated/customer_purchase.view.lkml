view: customer_purchase {
  sql_table_name: `sandbox-ymarcel.aggregated.customer_purchase`
    ;;

  dimension_group: first_purchase_date {
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
    datatype: datetime
    sql: ${TABLE}.first_purchase_date ;;
  }

  dimension_group: last_purchase_date {
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
    datatype: datetime
    sql: ${TABLE}.last_purchase_date ;;
  }

  dimension: n_basket {
    type: number
    sql: ${TABLE}.n_basket ;;
  }

  dimension: total_purchase {
    type: number
    sql: ${TABLE}.total_purchase ;;
  }

  dimension: user {
    primary_key: yes
    type: string
    sql: ${TABLE}.user ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
