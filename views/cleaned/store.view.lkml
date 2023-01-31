view: store {
  sql_table_name: `sandbox-ymarcel.cleaned.store`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: coordinate {
    type: string
    sql: ${TABLE}.coordinate ;;
  }

  dimension: localisation {
    type:  location
    sql_latitude: ${TABLE}.coordinate ;;
    sql_longitude: ${TABLE}.coordinate ;;
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

  dimension: id_manager {
    type: number
    sql: ${TABLE}.id_manager ;;
  }

  dimension: id_store {
    primary_key: yes
    type: number
    sql: ${TABLE}.id_store ;;
  }

  dimension_group: insertion_time {
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
    sql: ${TABLE}.insertion_time ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension_group: update_time {
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
    sql: ${TABLE}.update_time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
