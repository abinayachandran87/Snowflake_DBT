{% snapshot user_history %}
{{
    config(
            target_schema='PUBLIC',
            unique_key='USER_ID',
            strategy='check',
            check_cols=['phone', 'address']
    )
}}

select * from my_db.public.users
{% endsnapshot%}