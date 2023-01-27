view: basket_header {
  sql_table_name: `sandbox-ymarcel.cleaned.basket_header`
    ;;

  dimension_group: creation_time {
    type: time
    description: "Time of record creation"
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: id_basket_header {
    primary_key: yes
    type: number
    description: "Unique ID of the basket"
    sql: ${TABLE}.id_basket_header ;;
  }

  dimension: id_cash_desk {
    type: number
    description: "Unique ID of the cash desk"
    sql: ${TABLE}.id_cash_desk ;;
  }

  dimension: id_customer {
    type: number
    description: "Unique ID of the customer"
    sql: ${TABLE}.id_customer ;;
  }

  dimension: id_store {
    type: number
    description: "Unique ID of the store"
    sql: ${TABLE}.id_store ;;
  }

  dimension_group: insertion_time {
    type: time
    description: "Time of record insertion"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.insertion_time ;;
  }

  dimension: n_product {
    type: number
    description: "Number of products purchased"
    sql: ${TABLE}.n_product ;;
  }

  dimension: n_product_distinct {
    type: number
    description: "Number of distinct products purchased"
    sql: ${TABLE}.n_product_distinct ;;
  }

  dimension: payment_mode {
    type: string
    description: "MasterCard / Visa / Cash"
    sql: ${TABLE}.payment_mode ;;
  }

  dimension_group: purchase_date {
    type: time
    description: "Date of the purchase"
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
    sql: ${TABLE}.purchase_date ;;
  }

  dimension: total_price {
    type: number
    description: "Total price of the basket"
    sql: ${TABLE}.total_price ;;
  }

  dimension_group: update_time {
    type: time
    description: "Time of record update"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
