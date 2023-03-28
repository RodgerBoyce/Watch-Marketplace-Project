from db.run_sql import run_sql

from models.brand import Brand
from models.watch import Watch

def save(brand):
    sql = "INSERT INTO brands (name, image) VALUES (%s, %s) RETURNING *"
    values = [brand.name, brand.image]
    results = run_sql(sql, values)
    id = results[0]['id']
    brand.id = id
    return brand

def select_all():
    brands= []
    sql = "SELECT * FROM brands"
    results= run_sql(sql)
    for row in results:
        brand= Brand(row['name'], row['image'], row['id'])
        brands.append(brand)
    return brands

def select(id):
    sql = "SELECT * FROM brands WHERE id = %s"
    values = [id]
    results = run_sql(sql, values)
    if results:
        result = results[0]
        brand = Brand(result['name'], result['image'], result['id'])
    return brand