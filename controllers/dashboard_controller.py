from flask import Flask, render_template, request, redirect
from models.calculations import total_sales, total_quantity_sold
from repositories import watch_repository
from repositories import brand_repository
from models.brand import Brand
from models.watch import Watch
import pdb

from flask import Blueprint

dashboard_blueprint = Blueprint("dashboard", __name__)

@dashboard_blueprint.route('/')
def dashboard():
    watches = watch_repository.select_all()
    brands = brand_repository.select_all()
    total_sold = total_sales(watches)
    quantity_sold = total_quantity_sold(watches)
    return render_template("index.html", total_sold=total_sold, total_quantity_sold=quantity_sold)

