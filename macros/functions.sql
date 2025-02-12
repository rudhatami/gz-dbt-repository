 {% macro margin_percent(revenue_per_month, purchase_cost_per_month, macro_var=2) %}
     ROUND( SAFE_DIVIDE( ({{revenue_per_month}} - {{purchase_cost_per_month}}) , {{revenue_per_month}} ), {{macro_var}})
 {% endmacro %}