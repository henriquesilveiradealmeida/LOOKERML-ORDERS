view: users {
  sql_table_name: public.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}."active" ;;
  }

  dimension: active_days_count {
    type: number
    sql: ${TABLE}."active_days_count" ;;
  }

  dimension: age {
    type: string
    sql: ${TABLE}."age" ;;
  }

  dimension: allowed_cancellation_discount {
    type: yesno
    sql: ${TABLE}."allowed_cancellation_discount" ;;
  }

  dimension: available_free_boxes {
    type: number
    sql: ${TABLE}."available_free_boxes" ;;
  }

  dimension: average_order {
    type: number
    sql: ${TABLE}."average_order" ;;
  }

  dimension_group: birth {
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
    sql: ${TABLE}."birth_date" ;;
  }

  dimension: box_configuration_id {
    type: string
    sql: ${TABLE}."box_configuration_id" ;;
  }

  dimension: cellphone {
    type: string
    sql: ${TABLE}."cellphone" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension_group: created_at {
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

  dimension: customization_score {
    type: number
    sql: ${TABLE}."customization_score" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}."encrypted_password" ;;
  }

  dimension: gclid {
    type: string
    sql: ${TABLE}."gclid" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: geofence_id {
    type: string
    sql: ${TABLE}."geofence_id" ;;
  }

  dimension: gift_card_credit_amount {
    type: number
    sql: ${TABLE}."gift_card_credit_amount" ;;
  }

  dimension: gift_card_id {
    type: string
    sql: ${TABLE}."gift_card_id" ;;
  }

  dimension: journey_started_from {
    type: string
    sql: ${TABLE}."journey_started_from" ;;
  }

  dimension: month_cohort {
    type: number
    sql: ${TABLE}."month_cohort" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: newsletter_notification {
    type: yesno
    sql: ${TABLE}."newsletter_notification" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."notes" ;;
  }

  dimension: number_of_orders_delivered {
    type: number
    sql: ${TABLE}."number_of_orders_delivered" ;;
  }

  dimension: old_bitly_referral_url {
    type: string
    sql: ${TABLE}."old_bitly_referral_url" ;;
  }

  dimension: omie_id {
    type: number
    sql: ${TABLE}."omie_id" ;;
  }

  dimension: operating_browser_version {
    type: string
    sql: ${TABLE}."operating_browser_version" ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}."operating_system" ;;
  }

  dimension: origin_url {
    type: string
    sql: ${TABLE}."origin_url" ;;
  }

  dimension: pagarme_customer_id {
    type: string
    sql: ${TABLE}."pagarme_customer_id" ;;
  }

  dimension: payment_provider {
    type: number
    sql: ${TABLE}."payment_provider" ;;
  }

  dimension: referral_code {
    type: string
    sql: ${TABLE}."referral_code" ;;
  }

  dimension: referred_by_id {
    type: string
    sql: ${TABLE}."referred_by_id" ;;
  }

  dimension_group: remember_created {
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
    sql: ${TABLE}."remember_created_at" ;;
  }

  dimension_group: reset_password_sent {
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
    sql: ${TABLE}."reset_password_sent_at" ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}."reset_password_token" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension: stripe_customer_id {
    type: string
    sql: ${TABLE}."stripe_customer_id" ;;
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

  dimension: utm_campaign {
    type: string
    sql: ${TABLE}."utm_campaign" ;;
  }

  dimension: utm_content {
    type: string
    sql: ${TABLE}."utm_content" ;;
  }

  dimension: utm_medium {
    type: string
    sql: ${TABLE}."utm_medium" ;;
  }

  dimension: utm_source {
    type: string
    sql: ${TABLE}."utm_source" ;;
  }

  dimension: utm_term {
    type: string
    sql: ${TABLE}."utm_term" ;;
  }

  dimension: week_cohort {
    type: number
    sql: ${TABLE}."week_cohort" ;;
  }

  dimension: whatsapp_notification {
    type: yesno
    sql: ${TABLE}."whatsapp_notification" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, order_item_feedbacks.count]
  }
}
