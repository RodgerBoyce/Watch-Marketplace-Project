from flask import Flask, render_template, request, redirect
from repositories import watch_repository
from repositories import brand_repository
from models.brand import Brand
from models.watch import Watch
import pdb

from flask import Blueprint

watches_blueprint = Blueprint("watch", __name__)

@watches_blueprint.route('/watches')
def watches():
    watches = watch_repository.select_all()
    return render_template("watches/index.html", all_watches=watches)

@watches_blueprint.route('/watches/<id>')
def show_watch(id):
    selected_watch = watch_repository.select(id)
    return render_template('/watches/show.html', watch=selected_watch)

@watches_blueprint.route('/watches/<id>/delete', methods=['POST'])
def delete(id):
    watch_repository.delete(id)
    return redirect('/watches')

@watches_blueprint.route('/watches/new')
def add_new_page():
    brands = brand_repository.select_all()
    return render_template('/watches/new.html', brand_list=brands)

@watches_blueprint.route('/watches', methods=['POST'])
def add_new_watch():
    brand_id = request.form['brand_id']
    model = request.form['model']
    price = request.form['price']
    image = request.form['image']
    watch = Watch(brand_id, model, price, image)
    watch_repository.save(watch)
    return redirect('/watches')

@watches_blueprint.route('/watches/<id>/edit', methods=['GET'])
def edit_watch_page(id):
    watch = watch_repository.select(id)
    return render_template('watches/edit.html', watch=watch)

@watches_blueprint.route('/watches/<id>', methods=['POST'])
def update_watch(id):
    brand_id = request.form['brand_id']
    brand = brand_repository.select(brand_id)
    model = request.form['model']
    price = request.form['price']
    image = request.form['image']
    sold = request.form['sold']
    watch = Watch(brand, model, price, image, sold, id)
    watch_repository.update(watch)
    return redirect(f'/watches/{id}')