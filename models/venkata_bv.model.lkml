connection: "likhitha_bv_new"

# include all the views
include: "/views/**/*.view"

datagroup: venkata_bv_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: venkata_bv_default_datagroup
access_grant: can_view {
  user_attribute: visible
  allowed_values: ["YES"]
}

explore: mark_list {
  join : attendance1{
    type: inner
    relationship: one_to_one
    sql_on: ${mark_list.id}=${attendance1.id} ;;
    required_access_grants: [can_view]
  }
}

explore: attendance1 {}
