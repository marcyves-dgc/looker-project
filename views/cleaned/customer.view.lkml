view: customer {
  sql_table_name: `sandbox-ymarcel.cleaned.customer`
    ;;

  dimension_group: creation_date {
    type: time
    description: "Creation date of the customer"
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

  dimension: email {
    type: string
    description: "Email of the customer"
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    description: "Customer first name"
    sql: ${TABLE}.first_name ;;
  }

  dimension: id_customer {
    primary_key: yes
    type: number
    description: "Unique ID of the customer"
    sql: ${TABLE}.id_customer ;;
  }

  dimension_group: insertion_time {
    type: time
    description: "Time of insertion"
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

  dimension: last_name {
    type: string
    description: "Customer last name"
    sql: ${TABLE}.last_name ;;
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
    drill_fields: [last_name, first_name]
  }
}
