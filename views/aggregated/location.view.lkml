view: location {
  derived_table: {
    sql: SELECT
        DISTINCT country,
        city,
        ST_X(coordinate) as `longitude`,
        ST_Y(coordinate) as `latitude`,
      FROM `sandbox-ymarcel.cleaned.store`
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [country, city, longitude, latitude, location]
  }
}
