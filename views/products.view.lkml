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

  dimension: category_products {
    type: string
    sql: CASE
    WHEN ${product_classification_id} = '90f4b77a-fb4a-47ea-8846-eff19048e825'
      THEN 'Verdura'
    WHEN ${product_classification_id} = '7ed72635-194b-4806-bc0a-24aa2e9ca5fa'
      THEN 'Tempero'
    WHEN ${product_classification_id} = '62202dce-a21f-408d-a538-6fdc29d567f6'
      THEN 'Legumes'
    WHEN ${product_classification_id} = '33ff5cc8-2df4-418a-90e1-e44ca834c559'
      THEN 'Frutas'
    ELSE 'Outra'
END;;
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
