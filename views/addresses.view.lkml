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

  dimension: poligono {
    type:  string
    sql:  case
    when ${geofence_oficial} = '7bfe6eec-5c13-4bc4-b3bd-3caf466a2d62'
      then 'CENTRO-SP'
    when ${geofence_oficial} = '8afe2a22-ee99-41fc-855e-6e8e61369346'
      then 'CENTRO-SUL-SP'
    when ${geofence_oficial} = 'f80069fc-4dde-44f4-b3fc-b7a17813b1ef'
      then 'SUL-SP'
    when ${geofence_oficial} = 'cfbf931e-1602-4738-934c-3d3379ceb197'
      then 'LESTE-SP'
    when ${geofence_oficial} = 'f3f50473-179c-4400-a5a5-e25c8b89c6ad'
      then 'OESTE-SP'
    when ${geofence_oficial} = '90630454-d285-412b-ad36-024486ea501a'
      then 'NORTE-SP'
    when ${geofence_oficial} = 'e7fe0855-e475-41d6-bfb6-4b6b253d17c5'
      then 'OESTE-MTP-SP'
    when ${geofence_oficial} = '6266822e-9519-4d3c-bfa2-a0f14c90dbd2'
      then 'ABC-MTP-SP'
    when ${geofence_oficial} = '8140860f-5b8d-41e2-9d35-9c07d2f37658'
      then 'GRL-MTP-SP'
      ELSE 'OUTRO'
      END;;
  }

dimension: coordenadas {
  type: string
  sql: concat(${latitude},',',${longitude});;
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
