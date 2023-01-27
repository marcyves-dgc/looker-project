view: basket_detail {
  sql_table_name: `sandbox-ymarcel.cleaned.basket_detail`
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
    sql: ${TABLE}.creation_time ;;
  }

  dimension: id_basket_header {
    type: number
    description: "Unique ID of the basket"
    sql: ${TABLE}.id_basket_header ;;
  }

  dimension: product_name {
    type: string
    description: "Name of the product"
    sql: ${TABLE}.product_name ;;
  }

  dimension: quantity {
    type: number
    description: "Quantity purchased"
    sql: ${TABLE}.quantity ;;
  }

  dimension: unit_price {
    type: number
    description: "Unit price of the product"
    sql: ${TABLE}.unit_price ;;
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
    drill_fields: [product_name]
  }
}
