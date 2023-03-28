from flask import Flask, render_template, request, redirect
from repositories import watch_repository
from repositories import brand_repository
from models.brand import Brand

from flask import Blueprint

brands_blueprint = Blueprint("brands", __name__)

@brands_blueprint.route("/brands")
def brands():
    brands = brand_repository.select_all()
    return render_template("/brands/index.html", all_brands=brands)

@brands_blueprint.route('/brands/<id>')
def show_brand(id):
    selected_brand = brand_repository.select(id)
    watches = watch_repository.select_all()
    return render_template('/brands/show.html', brand=selected_brand, watches=watches)