connection: "admin_db"

# include all the views
include: "/views/**/*.view"

datagroup: orders_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: orders_default_datagroup

explore: order_items {
  join: subscriptions {
    type: left_outer
    sql_on:  ${order_items.subscription_id} = ${subscriptions.id};;
    relationship: many_to_many
  }

  join: addresses {
    type:  left_outer
    sql_on:  ${subscriptions.id} = ${addresses.subscription_id} ;;
    relationship: many_to_many
  }

join: users {
  type:  left_outer
  sql_on: ${subscriptions.user_id} = ${users.id} ;;
  relationship: many_to_many
}

join: order_item_feedbacks {
  type:  left_outer
  sql_on: ${order_items.id} = ${order_item_feedbacks.order_item_id};;
  relationship: many_to_many
}

}
