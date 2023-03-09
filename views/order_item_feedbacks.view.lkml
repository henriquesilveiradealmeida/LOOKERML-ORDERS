view: order_item_feedbacks {
  sql_table_name: public.order_item_feedbacks ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
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

  dimension: improvement_category {
    type: number
    sql: ${TABLE}."improvement_category" ;;
  }

  dimension: observations {
    type: string
    sql: ${TABLE}."observations" ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}."order_item_id" ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}."rate" ;;
  }

  dimension: rated_by {
    type: number
    sql: ${TABLE}."rated_by" ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name]
  }
}
