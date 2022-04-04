{% macro drop_raw_table() %}

    {% do log("create_raw_table started", info=True) %}
    {% set config = _get_config() %}

    {% set sql %}
        drop table if exists {{ config["database"] }}.{{ config["schema"] }}.{{ config["table"] }}
    {% endset %}    
    {% do run_query(sql) %}
    {% do log(sql, info=True) %}

    {% do log("drop_raw_table completed", info=True) %}

{% endmacro %}
