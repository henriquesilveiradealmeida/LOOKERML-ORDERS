view: order_items {
  sql_table_name: public.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: box_amount {
    type: number
    sql: ${TABLE}."amount" ;;
  }

  dimension: amout_tier {
    type: tier
    tiers: [50,70,90,110,130,150,170,180,200,220,240,260,280,300]
    style: integer
    sql: ${TABLE}."amount" ;;
  }

  dimension_group: created_order {
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

  dimension_group: delivery {
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
    sql: ${TABLE}."delivery_date" ;;
  }

  dimension: delivery_fee_amount {
    type: number
    sql: ${TABLE}."delivery_fee_amount" ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}."discount_amount" ;;
  }

  dimension: eggs_trial {
    type: yesno
    sql: ${TABLE}."eggs_trial" ;;
  }

  dimension: first_order {
    type: yesno
    sql: ${TABLE}."first_order" ;;
  }

  dimension: free {
    type: yesno
    sql: ${TABLE}."free" ;;
  }

  dimension: free_reason {
    type: string
    sql: ${TABLE}."free_reason" ;;
  }

  dimension: fruits_portion {
    type: number
    sql: ${TABLE}."fruits_portion_amount" ;;
  }

  dimension: greens_portion {
    type: number
    sql: ${TABLE}."greens_portion_amount" ;;
  }

  dimension: spices_portion {
    type: number
    sql: ${TABLE}."spices_portion_amount" ;;
  }

  dimension: vegetables_portion {
    type: number
    sql: ${TABLE}."vegetables_portion_amount" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."notes" ;;
  }

  dimension: order_delivered_number {
    type: number
    sql: ${TABLE}."order_delivered_number" ;;
  }

  dimension: order_delivery_period {
    type: string
    sql: case
    when ${TABLE}."order_delivery_period" = 1 THEN 'Manhã'
    else 'Tarde'
    end;;
  }

  dimension: order_item_issue {
    type: yesno
    sql: ${TABLE}."order_item_issue" ;;
  }

  dimension: order_item_issue_description {
    type: string
    sql: ${TABLE}."order_item_issue_description" ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}."order_number" ;;
  }

  dimension: order_size {
    type: number
    sql: ${TABLE}."order_size" ;;
  }

  dimension: order_status {
    type: number
    sql: ${TABLE}."order_status" ;;
  }

  dimension_group: out_for_delivery {
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
    sql: ${TABLE}."out_for_delivery_at" ;;
  }

  dimension: pagarme_charge_id {
    type: string
    sql: ${TABLE}."pagarme_charge_id" ;;
  }

  dimension_group: paid {
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
    sql: ${TABLE}."paid_at" ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}."payment_date" ;;
  }

  dimension: payment_status {
    type: number
    sql: ${TABLE}."payment_status" ;;
  }

  dimension: payment_type {
    type: number
    sql: ${TABLE}."payment_type" ;;
  }

  dimension: pix_url_instructions {
    type: string
    sql: ${TABLE}."pix_url_instructions" ;;
  }

  dimension: planning {
    type: yesno
    sql: ${TABLE}."planning" ;;
  }

  dimension: qr_code {
    type: string
    sql: ${TABLE}."qr_code" ;;
  }

  dimension: qr_code_url {
    type: string
    sql: ${TABLE}."qr_code_url" ;;
  }

  dimension: received_by {
    type: string
    sql: ${TABLE}."received_by" ;;
  }

  dimension: reference_number {
    type: number
    sql: ${TABLE}."reference_number" ;;
  }

  dimension: refunded_amount {
    type: number
    sql: ${TABLE}."refunded_amount" ;;
  }

  dimension_group: refunded {
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
    sql: ${TABLE}."refunded_at" ;;
  }

  dimension: resend_or_exchange {
    type: yesno
    sql: ${TABLE}."resend_or_exchange" ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}."route" ;;
  }

  dimension: route_critical {
    type: yesno
    sql: ${TABLE}."route_critical" ;;
  }

  dimension: route_order {
    type: string
    sql: ${TABLE}."route_order" ;;
  }

  dimension: sent_routeasy {
    type: yesno
    sql: ${TABLE}."sent_routeasy" ;;
  }

  dimension: shipping_cost {
    type: number
    sql: ${TABLE}."shipping_cost" ;;
  }

  dimension: skip_observation {
    type: string
    sql: ${TABLE}."skip_observation" ;;
  }

  dimension: skip_reason {
    type: number
    sql: ${TABLE}."skip_reason" ;;
  }

  dimension: special_attention {
    type: yesno
    sql: ${TABLE}."special_attention" ;;
  }

  dimension: special_attention_reason {
    type: string
    sql: ${TABLE}."special_attention_reason" ;;
  }


  dimension: stripe_charge_id {
    type: string
    sql: ${TABLE}."stripe_charge_id" ;;
  }

  dimension: stripe_payment_intent_id {
    type: string
    sql: ${TABLE}."stripe_payment_intent_id" ;;
  }

  dimension: stripe_refund_id {
    type: string
    sql: ${TABLE}."stripe_refund_id" ;;
  }

  dimension: subscription_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."subscription_id" ;;
  }

  dimension: tracking_url {
    type: string
    sql: ${TABLE}."tracking_url" ;;
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

  dimension: voucher_id {
    type: string
    # hidden: yes
    sql: ${TABLE}."voucher_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_box_amout {
    type: sum
    sql:${box_amount} ;;
    value_format_name: decimal_0
  }

  measure: sum_delivery_fee {
    type: sum
    sql: ${delivery_fee_amount} ;;
    value_format_name: decimal_0
  }

  measure: sum_discount_amount {
    type: sum
    sql: ${discount_amount} ;;
    value_format_name: decimal_0
  }
  #calcula o valor de desconto sem considerar os pedidos que não houveram desconto
  measure: avg_discount_amount_greater_than_zero {
    type: average
    sql: ${discount_amount} ;;
    filters: [discount_amount: ">0"]
    value_format_name: decimal_2
  }

#calculando mensurações das porções

  measure: sum_fruits_portion {
    type: sum
    sql: ${fruits_portion} ;;
    value_format_name: decimal_0
  }

  measure: avg_fruits_portion {
    type: average
    sql: ${fruits_portion} ;;
    value_format_name: decimal_2
  }

  measure: sum_greens_portion {
    type: sum
    sql: ${greens_portion} ;;
    value_format_name: decimal_0
  }

  measure: avg_greens_portion {
    type: average
    sql: ${greens_portion} ;;
    value_format_name: decimal_2
  }

  measure: sum_spices_portion {
    type: sum
    sql: ${spices_portion} ;;
    value_format_name: decimal_0
  }

  measure: avg_spices_portion {
    type: average
    sql: ${spices_portion} ;;
    value_format_name: decimal_2
  }

  measure: sum_vegetables_portion {
    type: sum
    sql: ${vegetables_portion} ;;
    value_format_name: decimal_0
  }

  measure: avg_vegetables_portion {
    type: average
    sql: ${vegetables_portion} ;;
    value_format_name: decimal_2
  }
 #

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      subscriptions.id,
      vouchers.id,
      vouchers.name,
      users.name,
      users.id,
      dependents.name,
      dependents.id,
      box_plans.count,
      gift_deliveries.count,
      invoices.count,
      message_trackings.count,
      order_item_add_ons.count,
      order_item_box_composition_items.count,
      order_item_feedbacks.count,
      order_item_follow_ups.count,
      order_item_issues.count,
      payment_charge_requests.count
    ]
  }
}
