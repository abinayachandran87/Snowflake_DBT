import snowflake.snowpark.functions as F
import datetime

def model(dbt, session):
    df = dbt.ref('order_stg')
    
    df_orders_det = df.select(df['order_key'], df['total_price'], df['order_date'], 
    F.weekofyear(df['order_date']).alias('week_year'), F.date_part('year', df['order_date']).alias('year'))
    cols = ['year', 'week_year']
    df = df_orders_det.groupBy(cols).agg(F.sum('total_price').alias('weekly_sales'))

    return df