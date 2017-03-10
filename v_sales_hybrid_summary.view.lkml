view: v_sales_hybrid_summary {
  sql_table_name: public.v_sales_hybrid_summary ;;

  dimension_group: begin {
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
    sql: ${TABLE}.begin_date ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  measure: downloads {
    type: sum
    sql: ${TABLE}.downloads ;;
  }

  dimension: purchase_type {
    type: string
    sql: ${TABLE}.purchase_type ;;
  }

  measure: revenue {
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format: "$#.00;($#.00)"
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: transactions {
    type: sum
    sql: ${TABLE}.transactions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
