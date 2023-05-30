

# get the total sales for all watches-
# set total sale amount variable to 0
# for each watch in the list of all watches-
# if watch is sold then-
# add the watch's price to total sale amount
# return the total sale amount

def total_sales(all_watches):
    total_sale_amount = 0
    for watch in all_watches:
        if watch.sold:
            total_sale_amount += watch.price
    return total_sale_amount



def total_quantity_sold(all_watches):
    total_quantity_sold = 0
    for watch in all_watches:
        if watch.sold==True:
            total_quantity_sold += 1
        return total_quantity_sold
