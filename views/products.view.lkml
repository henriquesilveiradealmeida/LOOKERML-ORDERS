view: products {
  sql_table_name: public.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: available_to_sell {
    type: yesno
    sql: ${TABLE}."available_to_sell" ;;
  }

  dimension: average_price {
    type: number
    sql: ${TABLE}."average_price" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}."display_name" ;;
  }

  dimension: frequency {
    type: string
    sql: ${TABLE}."frequency" ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}."image" ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}."kind" ;;
  }

  dimension: max_quantity {
    type: number
    sql: ${TABLE}."max_quantity" ;;
  }

  dimension: max_unit_of_measurement {
    type: number
    sql: ${TABLE}."max_unit_of_measurement" ;;
  }

  dimension: migrated {
    type: yesno
    sql: ${TABLE}."migrated" ;;
  }

  dimension: min_quantity {
    type: number
    sql: ${TABLE}."min_quantity" ;;
  }

  dimension: min_unit_of_measurement {
    type: number
    sql: ${TABLE}."min_unit_of_measurement" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}."ncm" ;;
  }

  dimension: omie_id {
    type: number
    sql: ${TABLE}."omie_id" ;;
  }

  dimension: parent_product {
    type: string
    sql: ${TABLE}."parent_product" ;;
  }

  dimension: portion {
    type: number
    sql: ${TABLE}."portion" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: product_classification_id {
    type: string
    sql: ${TABLE}."product_classification_id" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: unit_of_measurement {
    type: number
    sql: ${TABLE}."unit_of_measurement" ;;
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

  measure: count {
    type: count
    drill_fields: [id, name, display_name, box_plan_items.count]
  }
}
