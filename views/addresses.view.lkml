view: addresses {
  sql_table_name: public.addresses ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: complement {
    type: string
    sql: ${TABLE}."complement" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: geofence_id {
    type: string
    sql: ${TABLE}."geofence_id" ;;
  }

  dimension: geofence_oficial {
    type:  string
    sql: CASE
      WHEN ${new_geofence_id} IS NULL
      THEN ${geofence_id}
    ELSE ${new_geofence_id}
    END ;;
  }

  dimension: kind {
    type: number
    sql: ${TABLE}."kind" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: neighbourhood {
    type: string
    sql: ${TABLE}."neighbourhood" ;;
  }

  dimension: new_geofence_id {
    type: string
    sql: ${TABLE}."new_geofence_id" ;;
  }

  dimension: primary {
    type: yesno
    sql: ${TABLE}."primary" ;;
  }

  dimension: receiver_cellphone {
    type: string
    sql: ${TABLE}."receiver_cellphone" ;;
  }

  dimension: receiver_email {
    type: string
    sql: ${TABLE}."receiver_email" ;;
  }

  dimension: receiver_name {
    type: string
    sql: ${TABLE}."receiver_name" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."street" ;;
  }

  dimension: street_number {
    type: string
    sql: ${TABLE}."street_number" ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}."subscription_id" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."zipcode" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, receiver_name]
  }
}
