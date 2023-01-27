view: cash_desk_transaction {
  sql_table_name: `sandbox-ymarcel.aggregated.cash_desk_transaction`
    ;;

  dimension: city_store {
    type: string
    sql: ${TABLE}.city_store ;;
  }

  dimension: id_cash_desk {
    primary_key: yes
    type: number
    sql: ${TABLE}.id_cash_desk ;;
  }

  dimension: id_store {
    type: number
    sql: ${TABLE}.id_store ;;
  }

  dimension: n_basket {
    type: number
    sql: ${TABLE}.n_basket ;;
  }

  dimension: n_product {
    type: number
    sql: ${TABLE}.n_product ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
