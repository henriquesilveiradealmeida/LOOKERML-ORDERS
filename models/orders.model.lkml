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
    sql_on:  ${subscriptions.id} = ${addresses.id} ;;
    relationship: many_to_many
  }
}
