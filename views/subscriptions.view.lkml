view: subscriptions {
  sql_table_name: public.subscriptions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: affiliated_by {
    type: string
    sql: ${TABLE}."affiliated_by" ;;
  }

  dimension: box_configuration_id {
    type: string
    sql: ${TABLE}."box_configuration_id" ;;
  }

  dimension: cancel_notes {
    type: string
    sql: ${TABLE}."cancel_notes" ;;
  }

  dimension: cancel_reason {
    type: string
    sql: ${TABLE}."cancel_reason" ;;
  }

  dimension: cancel_sub_reason {
    type: string
    sql: ${TABLE}."cancel_sub_reason" ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}."cancelled_at" ;;
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

  dimension: day_of_delivery {
    type: string
    sql: ${TABLE}."day_of_delivery" ;;
  }

  dimension: delivery_period {
    type: number
    sql: ${TABLE}."delivery_period" ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}."frequency" ;;
  }

  dimension_group: last_delivered_order {
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
    sql: ${TABLE}."last_delivered_order_at" ;;
  }

  dimension: last_rate {
    type: number
    sql: ${TABLE}."last_rate" ;;
  }

  dimension: old_cancel_reason {
    type: number
    sql: ${TABLE}."old_cancel_reason" ;;
  }

  dimension: primary {
    type: yesno
    sql: ${TABLE}."primary" ;;
  }

  dimension_group: reactivated {
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
    sql: ${TABLE}."reactivated_at" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: subscription_plan {
    type: number
    sql: ${TABLE}."subscription_plan" ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}."test" ;;
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
    sql: ${TABLE}."user_id" ;;
  }

  dimension: voucher_id {
    type: string
    sql: ${TABLE}."voucher_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
