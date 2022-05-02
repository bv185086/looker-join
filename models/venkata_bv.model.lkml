connection: "likhitha_bv_new"

# include all the views
include: "/views/**/*.view"

datagroup: venkata_bv_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: venkata_bv_default_datagroup

explore: mark_list {}

explore: attendance1 {}
