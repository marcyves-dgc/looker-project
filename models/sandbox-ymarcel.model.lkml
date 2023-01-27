connection: "sandbox-ymarcel-cleaned"

datagroup: sandbox-ymarcel-cleaned_default {
  max_cache_age: "24 hours"
}

persist_with: sandbox-ymarcel-cleaned_default

include: "/views/**/**.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
#


explore: basket_detail {}

explore: basket_header {}

explore: customer {}

explore: store {}

explore: open_store {}

explore: customer_purchase {}

explore: cash_desk_transaction {
  join: store {
    type: inner
    sql_on: ${cash_desk_transaction.id_store} = ${store.id_store};;
    relationship: many_to_one
  }
  join: basket_header {
    type: left_outer
    sql_on: ${cash_desk_transaction.id_store} = ${basket_header.id_store} ;;
    relationship: many_to_many
  }
}

explore: best_product_sale {}
