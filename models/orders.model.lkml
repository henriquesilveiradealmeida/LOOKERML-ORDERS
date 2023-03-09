connection: "admin_db"

# include all the views
include: "/views/**/*.view"

datagroup: orders_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: orders_default_datagroup

explore: order_items {
}
