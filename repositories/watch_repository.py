from db.run_sql import run_sql
from models.brand import Brand
from models.watch import Watch
import repositories.brand_repository as brand_repository


def save(watch):
    sql = "INSERT INTO watches (brand_id, model, price, image, sold) VALUES (%s, %s, %s, %s, %s) RETURNING *"
    values = [watch.brand, watch.model, watch.price, watch.image, watch.sold]
    results = run_sql(sql, values)
    id = results[0]['id']
    watch.id = id
    return watch

def select_all():
    watches= []
    sql = "SELECT * FROM watches"
    results= run_sql(sql)
    for row in results:
        brand = brand_repository.select(row['brand_id'])
        watch = Watch(brand, row['model'], row['price'], row['image'], row['sold'], row['id'])
        watches.append(watch)
    return watches

def select(id):
    watch = None
    sql = "SELECT * FROM watches WHERE id = %s"
    values = [id]
    results = run_sql(sql, values)
    if results:
        result = results[0]
        brand = brand_repository.select(result['brand_id'])
        watch = Watch(brand, result['model'], result['price'], result['image'], result['sold'], result['id'])
    return watch

def delete(id):
    sql = "DELETE FROM watches WHERE id = %s"
    values = [id]
    run_sql(sql, values)

def update(watch):
    sql = "UPDATE watches SET (brand_id, model, price, image, sold) = (%s, %s, %s, %s, %s) WHERE id = %s"
    values = [watch.brand.id, watch.model, watch.price, watch.image, watch.sold, watch.id]
    run_sql(sql, values)