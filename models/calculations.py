def total_sales(all_watches):
    total_sale_amount = 0
    for watch in all_watches:
        if watch.sold:
            total_sale_amount += watch.price
    return total_sale_amount

def total_quantity_sold(all_watches):
    total_quantity_sold = 0
    for watch in all_watches:
        if watch.sold:
            total_quantity_sold += 1
    return total_quantity_sold
