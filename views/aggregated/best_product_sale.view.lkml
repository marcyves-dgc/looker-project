view: best_product_sale {
  sql_table_name: `sandbox-ymarcel.aggregated.best_product_sale`
    ;;

  dimension: product_name {
    primary_key: yes
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: rank_in_quantity {
    type: number
    sql: ${TABLE}.rank_in_quantity ;;
  }

  dimension: rank_in_sale {
    type: number
    sql: ${TABLE}.rank_in_sale ;;
  }

  dimension: total_quantity {
    type: number
    sql: ${TABLE}.total_quantity ;;
  }

  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
